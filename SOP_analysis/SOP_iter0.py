from sympy.logic.boolalg import *
from sympy.parsing.sympy_parser import *
import cframe_src.cframe as cf

#returns a dict (key=output) of lists containing lists (logic_maps of roths)
def retrieve_sumOfProducts(circuit):
    inputs = [cf.Roth.Zero]*len(circuit.inputs)
    outputs= circuit.outputs
    sumOfProducts= dict()
    for i in outputs:
        sumOfProducts[i]=list()
    #sumOfProducts= dict.fromkeys(outputs,list([]))

#zero case
    circuit.set_inputs(inputs)
    circuit.evaluate()
    for out_i, output in enumerate(circuit.get_outputs()):
        if(output.value):
            sumOfProducts[outputs[out_i]].append(list(inputs))
#rest of cases
    for i in range(len(inputs)):
        for j in range(i,len(inputs)):
            inputs[j]=cf.Roth.One
            circuit.set_inputs(inputs)
            circuit.evaluate() #this might not be neccesary

            #print([x.value for x in inputs])
            for out_i, output in enumerate(circuit.get_outputs()):
                if(output.value):
                    sumOfProducts[outputs[out_i]].append(list(inputs))

            inputs[j]=cf.Roth.Zero
        inputs[i]=cf.Roth.One
    return sumOfProducts


#inputs
#    sumOfProducts: {output_name : [ [roth_val...roth_val]..[]  ]}
#    inputs: [input_name1.... input_nameN]
#
#returns:
#    sumOfProduct: {output_name: str(sop_expr)}
#
#
def simplify_sumOfProducts(inputs, sumOfProducts):
    def simplify_one_output(key, minterms):
        minterms_bool=[ [x.value for x in and_logic] for and_logic in minterms]
        sumOfProducts[key]=str(SOPform(inputs, minterms_bool))

    looper= [simplify_one_output(key,minterms) for key, minterms in sumOfProducts.items()]

    #for key, minterms in sumOfProducts.items():

    return sumOfProducts