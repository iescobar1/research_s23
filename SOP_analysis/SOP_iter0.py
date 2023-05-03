from sympy.logic.boolalg import *
from sympy.parsing.sympy_parser import *
import cframe_src.cframe as cf

"""
Takes a cframe circuit, obtains a boolean expression for each output by brute-force...
    iterate through every possible input and record the outputs for every expression 
    (basically obtains all the minterms)



retrieve_sumOfProducts(circuit) : list of lists containg roth vals
    Takes a cframe circuit, obtains a boolean expression for each output, then
        makes a 2D array, each element in the outer array being or'd while the sub
        list themselese have a series of ones/zeros representing the required sequence to 
        make value true

    (e.g. [ [1,0] [0,1] ] <=> a(~b) + (~a)b <=> a^b )
    KEEP IN MIND, it is a array of roth values, not booleans.

    Parameters
    -----
    circuit : cframe.circuit
        a circuit representation of the iscass file

simplify_sumOfProducts(inputs, sumOfProducts) : dict
    takes the 2D array made by the previous function and returns a dictionary
    mapping each output gate (str) to its boolean expression (str)

    Parameters
    -----
    input : list of strings
        The name of all the input gates in order*

    *if order is lost between this function call and retrieve_sumOfProducts, this will fail*

"""
def retrieve_sumOfProducts(circuit):
    inputs = [cf.Roth.Zero]*len(circuit.inputs)
    outputs= circuit.outputs
    sumOfProducts= dict()
    for i in outputs:
        sumOfProducts[i]=list()

#zero case
    circuit.set_inputs(inputs)
    circuit.evaluate()
    for out_i, output in enumerate(circuit.get_outputs()):
        if(output.value):
            sumOfProducts[outputs[out_i]].append(list(inputs))
#rest of cases
#iterate through every possible input
    for i in range(len(inputs)):
        for j in range(i,len(inputs)):
            inputs[j]=cf.Roth.One
            circuit.set_inputs(inputs)
            circuit.evaluate() #this might not be neccesary

            #print([x.value for x in inputs])
            for out_i, output in enumerate(circuit.get_outputs()):
                #if a output is 1, record the inputs that made it true
                if(output.value):
                    sumOfProducts[outputs[out_i]].append(list(inputs))

            inputs[j]=cf.Roth.Zero
        inputs[i]=cf.Roth.One
    return sumOfProducts


def simplify_sumOfProducts(inputs, sumOfProducts):
    def simplify_one_output(key, minterms):
        minterms_bool=[ [x.value for x in and_logic] for and_logic in minterms]
        sumOfProducts[key]=str(SOPform(inputs, minterms_bool))

    #if you wish, you can easily parallelize this with threads
    #I tried but didn't bother to continue using it as I was busy troubleshooting other components
    looper= [simplify_one_output(key,minterms) for key, minterms in sumOfProducts.items()]

    return sumOfProducts