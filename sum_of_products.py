#import asyncio
#import time
import cframe_src.cframe as cf
import os
from enum import Enum
from sympy.parsing.sympy_parser import *
from sympy.logic.boolalg import *
from pyeda.inter import *
import sys
sys.setrecursionlimit(100000)

def writeFile(path, contents):
    with open(path,"wt") as f:
        f.write(contents)

def readFile(path):
    with open(path, "rt") as f:
        return f.read()

def verify_outputs(initial_outputs, circ):
    print("VERIFYING OUTPUTS")
    circ.evaluate()
    new_outputs=[x in x in circ.get_outputs().value]
    print("New Outputs: {}".format(new_outputs))
    fail=False
    for i in range(len(initial_outputs)):
        if not new_outputs[i] == inital_outputs[i]:
            print("FAILED Output {}: initial={} Final={}".format(circ.outputs[i], initial_outputs[i], new_outputs[i]))
            fail=True
    if fail: quit()


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

#def retrieve_expr(circuit):
#    gate


def check_logic(old_circuit,new_circuit, sum_of_products={}):

    output_names=old_circuit.outputs
    inputs= [cf.Roth.Zero]*len(old_circuit.inputs)
    def one_logic_check(inputs):
        old_circuit.set_inputs(inputs)
        new_circuit.set_inputs(inputs)
        old_circuit.evaluate()
        new_circuit.evaluate()
        correct=True
        bool_inputs= [x.value for x in inputs]
        length_inputs=len(str(bool_inputs))

        #sum_of_products_lis=[inputs in sum_of_products[name] for name in output_names]
        #print(bool_inputs)
        #print(("Old\t|\t{}\nNew\t|\t{}\n").format([x.value for x in old_circuit.get_outputs()],[x.value for x in new_circuit.get_outputs()]))

        for out_i, output_val in enumerate(zip(old_circuit.get_outputs(), new_circuit.get_outputs())):
            if(output_val[0] != output_val[1]):
                print("failed")
                print("FAILED Output {}: initial={} Final={}".format(output_names[out_i], output_val[0].value, output_val[1].value))
                correct= False
        #print("\n")
        return correct


    #if(old_circuit.inputs!= new_circuit.inputs or old_circuit.outputs!=new_circuit.outputs):
    #   print("yo! inputs and outputs are not matching")
    #   print(old_circuit.inputs)
    #    print(new_circuit.inputs)
    #    print(old_circuit.outputs)
    #    print(old_circuit.outputs)
    #    return False
    if not one_logic_check(inputs):
        print("Zero case failed!")

    correct_for_all=True
    for i in range(len(inputs)):
        for j in range(i, len(inputs)):
            inputs[j]=cf.Roth.One
            #print("Test:{}".format([x.value for x in inputs]))
            if not one_logic_check(inputs):
                correct_for_all=False

            inputs[j]=cf.Roth.Zero
        inputs[i]=cf.Roth.One
    if correct_for_all:
        print("PASSED!!!")


#optimized version
#TODO make a dictionary to prevent additional gates


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


def make_simp_SOP_circ(file_path, inputs, sumOfProducts, outputs):
    and_gate_his=dict()
    or_gate_his=dict()
    def remove_paren(string):
        if(string[0]=="("):
            return string[1:-1]
    def add_ands(lis,gate_subsection):
        if len(lis)==1:
            if "~" in lis[0]:
                return ("",lis[0][1:]+"n")
            else:
                return ("", lis[0])
        elif len(lis)==2:
            vals= ("~" not in lis[0], "~" not in lis[1])
            if vals==(0,0):
                gates_to_and=(lis[0][1:]+"n", lis[1][1:]+"n")
            elif vals==(0,1):
                gates_to_and=(lis[0][1:]+"n", lis[1])
            elif vals==(1,0):
                gates_to_and=(lis[0], lis[1][1:]+"n")
            elif vals==(1,1):
                gates_to_and=(lis[0], lis[1])

            if gates_to_and in and_gate_his:
                return ("", and_gate_his[gates_to_and])
            else:
                content=gate_subsection+" = and("+gates_to_and[0]+","+gates_to_and[1]+")\n"
                return (content, gate_subsection)
        else:
            len_h=len(lis)//2
            res_gates=(add_ands(lis[:len_h],gate_subsection+"0"), add_ands(lis[len_h:], gate_subsection+"1"))
            new_contents=""
            if (res_gates[0][1], res_gates[1][1]) in and_gate_his:
               return ("",and_gate_his[(res_gates[0][1], res_gates[1][1])])
            else:
                new_contents= gate_subsection+" = and("+res_gates[0][1]+","+res_gates[1][1]+")\n"
                return (res_gates[0][0]+res_gates[1][0]+new_contents, gate_subsection)

    def add_ors(minterms, gate_section="G"):
        new_contents=""
        length=len(minterms)
        length_h=length//2

        if length==1:
            lis_subterms=[s.strip() for s in minterms[0].split(" & ")]
            return add_ands(lis_subterms,gate_section+"D")
        elif length==2:
            lis_subterms=([s.strip() for s in minterms[0].split(" & ")], [s.strip() for s in minterms[1].split(" & ")])
            res_gates=(add_ands(lis_subterms[0],gate_section+"0D"), add_ands(lis_subterms[1],gate_section+"1D"))

            if (res_gates[0][1], res_gates[1][1]) in or_gate_his:
                return ("",or_gate_his(res_gates[0][1], res_gates[1][1]))

            new_contents= gate_section+" = or("+ res_gates[0][1]+ ","+res_gates[1][1]+")\n\n"
            return (res_gates[0][0]+res_gates[1][0]+new_contents, gate_section)
        else:
            res_gates=(add_ors(minterms[:length_h],gate_section+"0"), add_ors(minterms[length_h:],gate_section+"1"))
            if (res_gates[0][1], res_gates[1][1]) in or_gate_his:
                return ("", or_gate_history[(res_gates[0][1], res_gates[1][1])])

            new_contents= gate_section+" = or("+ res_gates[0][1]+ ","+res_gates[1][1]+")\n\n"
            return (res_gates[0][0]+res_gates[1][0]+new_contents, gate_section)


    os.system("touch "+file_path)
    sop_file=""
    inv_inputs=[]
    for i in inputs:
        sop_file+="\nINPUT("+i+")"
        sop_file+="\n"+i+"n = not("+i+")"
        inv_inputs.append(i+"n")
    for o in outputs:
        sop_file+="\nOUTPUT("+o+")"

    sop_file+="\n\n"
    #logic overall
    gate_history=dict()

    for output_name, bool_expr_str in sumOfProducts.items():
        minterms=[remove_paren(s.strip()) for s in bool_expr_str.split(" | ")]
        txt_circuit=add_ors(minterms,output_name)
        sop_file+="\n\n"
        sop_file+=txt_circuit[0]
    writeFile(file_path,sop_file)



#retrieve circuit
circuit_prev=cf.Circuit("benchs/bk_add_16.txt")

use_version_1=True

#Version1:
#retrieve truth tables w/roth.vals
if use_version_1:
    sumOfProducts=retrieve_sumOfProducts(circuit_prev)
    sumOfProducts=simplify_sumOfProducts(circuit_prev.inputs, sumOfProducts)
    print(sumOfProducts)

#version2:
#iterate through circuit and retireve expression
#after retireveing, use pyeda AND sympy to simplify
else:
    sumOfProducts=retrieve_expr_n_sop(circuit_prev)
    print(sumOfProducts)

#Make circuits
if use_version_1:
    make_simp_SOP_circ("benchs/bk_add_16_sop_old",circuit_prev.inputs,sumOfProducts, circuit_prev.outputs)
    circuit=cf.Circuit("benchs/bk_add_16_sop_old")
    check_logic(circuit_prev, circuit)
else:
    make_simp_SOP_circ("benchs/bk_add_16_sop_new",circuit_prev.inputs,sumOfProducts, circuit_prev.outputs)
    circuit=cf.Circuit("benchs/bk_add_16_sop_new")
    check_logic(circuit_prev, circuit)


#for key, elem in sumOfProducts.items():
#    print(key)
#    print(elem)
#    print("\n")
#make_simp_SOP_circ("benchs/c432", circuit_prev.inputs, sumOfProducts, circuit_prev.outputs)
#print("\n\n")

#new_circuit=cf.Circuit("benchs/c432_sop")
#check_logic(circuit_prev,new_circuit, sumOfProducts)


