import cframe_src.cframe as cf
from sympy.parsing.sympy_parser import *
from sympy.logic.boolalg import *
from pyeda.inter import *

#gets a boolean expression from circuit
#turns the expression to a SOP expression in SYMPY str
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
            #print("or" in str_expr)
            #print(gate.name)
            #print(str_expr)
            #print("another breakkk\n")
            #print(expr(str_expr))
            #print("heeeey\n")
            #print(expr(str_expr).to_dnf())
            #print("sexy beast")
            #print(to_dnf(parse_expr(str_expr)))
            sumOfProducts[gate.name]=str(parse_expr(str(expr(str_expr).to_dnf()))) #DELETE THIS

            #sumOfProducts[gate.name]=str(to_dnf(parse_expr(str_expr)))#UNCOMMENT THIS
    return sumOfProducts
