#import asyncio
#import time
import cframe_src.cframe as cf
from ISCASS_writer import *
from SOP_iter0 import *
from SOP_iter1 import *
from enum import Enum
import sys

#this is not required unless the scenamic is very large circuit
sys.setrecursionlimit(100000)


############################# VERIFICATION ##############################

#provided my Mckenzie used as a outline
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

def print_sop(sop_dict):
    for output_name , boolean_expr in sop_dict.items():
        print("Output gate:\t{}".format(output_name))
        print("boolean expression:\t{}\n".format(boolean_expr))


############################# MAIN ##############################

#retrieve circuit
testpath="SOP_analysis/"
circuit_prev=cf.Circuit(testpath+"benchs/c17")

use_version_0=False

#Version1:
#retrieve truth tables w/roth.vals
if use_version_0:
    sumOfProducts=retrieve_sumOfProducts(circuit_prev)
    sumOfProducts=simplify_sumOfProducts(circuit_prev.inputs, sumOfProducts)
    print_sop(sumOfProducts)

#version2:
#iterate through circuit and retireve expression
#after retireveing, use pyeda AND sympy to simplify
else:
    sumOfProducts=retrieve_expr_n_sop(circuit_prev)
    print_sop(sumOfProducts)

#Make circuits
if use_version_1:
    make_simp_SOP_circ(testpath+"benchs/bk_add_16_sop_old",circuit_prev.inputs,sumOfProducts, circuit_prev.outputs)
    circuit=cf.Circuit(testpath+"benchs/bk_add_16_sop_old")
    check_logic(circuit_prev, circuit)
else:
    make_simp_SOP_circ(testpath+"benchs/bk_add_16_sop_new",circuit_prev.inputs,sumOfProducts, circuit_prev.outputs)
    circuit=cf.Circuit(testpath+"benchs/bk_add_16_sop_new")
    check_logic(circuit_prev, circuit)


#for key, elem in sumOfProducts.items():
#    print(key)
#    print(elem)
#    print("\n")
#make_simp_SOP_circ("benchs/c432", circuit_prev.inputs, sumOfProducts, circuit_prev.outputs)
#print("\n\n")

#new_circuit=cf.Circuit("benchs/c432_sop")
#check_logic(circuit_prev,new_circuit, sumOfProducts)


