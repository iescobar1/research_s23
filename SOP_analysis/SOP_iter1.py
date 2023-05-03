import cframe_src.cframe as cf
from sympy.parsing.sympy_parser import *
from sympy.logic.boolalg import *
from pyeda.inter import *

#gets a boolean expression from circuit
#turns the expression to a SOP expression in SYMPY str
"""
Takes a cframe circuit, obtains a boolean expression for each output through gate analysis, then
simplfies the expression using either sympy or pyeda


retrieve_exper_n_sop(circuit) : dict
    Takes a cframe circuit, obtains a boolean expression for each output, then
        simplfies the expression using either sympy or pyeda
    Parameters
    -----
    circuit : cframe.circuit
        a circuit representation of the iscass file

type_of_gate_str(gate) : bool
    Used to differentiate the multiple types of operations in a expression
        and know the required delmeters
    Parameters
    -----
    gate : cframe.circuit.gate
        A representation of a gate in a cframe circuit

expression(gate) : str
    returns a expression of purely only inputs as terms

    Base case: return a string of the gate input 
    Iterative case: 
        Assuming 
            1. the expression is a valid expression
            2. Expression function works
        Call the Expression function on each of its terms to recieve a expression
        that is only input gates


"""
def retrieve_expr_n_sop(circuit):
    def type_of_gate_str(gate):
        oper=gate.gatetype
        if oper == "AND":
            return (True, "", " & ")
        elif oper== "OR":
            return (True, "", " | ")
        elif oper == "XOR":
            return (True,  "", " ^ ")
        elif oper == "NAND":
            return (True, "~", " & ")
        elif oper== "NOR":
            return (True, "~", " | ")
        elif oper=="NOT":
            return (True, "~", "")
        elif oper=="XNOR":
            return (True, "~", " ^ ")
        elif oper=="BUFF" :
            return (True,"","")
        else :
            return (False, "","")

    def expression(gate):
        operation=type_of_gate_str(gate)
        str_expr=""
        if operation[0]:
            str_expr=operation[1]+"("
            for in_gate in gate.fanin:
                str_expr+=expression(circuit.gatemap[in_gate]) + operation[2]
            if str_expr[-2]=="&" or str_expr[-2]=="^" or str_expr[-2]=="|":
                str_expr=str_expr[:-3]
            str_expr+=")"
        elif gate.gatetype=="INPUT":
            str_expr= gate.name
        else:
            str_expr+="UNFORMATED:"+gate.gatetype
        return str_expr


    #keys: output_name : str
    #items: expression : str
    sumOfProducts= dict()

    for i in circuit.outputs:
        sumOfProducts[i]=""
    for gate in circuit.gatemap.values():
        if gate.output:
            operation=type_of_gate_str(gate)
            str_expr=""
            if operation[0]:
                str_expr=operation[1]+ "("
                for in_gate in gate.fanin:
                    str_expr+=expression(circuit.gatemap[in_gate]) + operation[2]
                if str_expr[-2]=="&" or str_expr[-2]=="^" or str_expr[-2]=="|":
                    str_expr=str_expr[:-3]
                str_expr+=")"

            #version 1
            """
            We use the pyeda library to convert the string to a valid expression and 
            call *to_dnf()* for a SOP expression

            We then convert this to a string were we put it in a
            Sympy format for consistant parsing when writing the circuit to 
            ISCASS file
            """
            #sumOfProducts[gate.name]=str( to_dnf(str(expr(str_expr).to_dnf()))) 

            #version 2
            """
            Sympy uses the boolean expression string and converts it to a 
            SOP (unsimplified)
            """
            sumOfProducts[gate.name]=str(to_dnf(str_expr))

    return sumOfProducts
