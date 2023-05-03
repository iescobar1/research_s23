import os

############################## I/O interface ###################################
def writeFile(path, contents):
    with open(path,"wt") as f:
        f.write(contents)

def readFile(path):
    with open(path, "rt") as f:
        return f.read()
    
    
########################### file writer #####################################

"""
retrieve_exper_n_sop(circuit) : dict
    Takes a SOP in a SymPy str format and writes into a specified file that retrieved
    boolean expression.
    Parameters
    -----
    circuit : cframe.circuit
        a circuit representation of the iscass file

remove_paren(string) : bool
    Parameters
    -----
    string : str
        a expression surrounded by parentheses

and_ands(list, gate_subsection) : str
    Iterate recursivly though all the gates in the list containing and'd gates
        return a sub_circuit representing the list

    Base case: 
        1. If only one gate exists, return the gate name
        2. If list has only two gate, return a string representing both of them and'd
    Iterative case: 
        Assuming 
            1. I can call and_ands on sub_exper_i and sub_expr_i+1 and they will
                return valid strings of circuits

and_ors(sub_expressions, gate_section="G") : str
    Iterate though all the sub expressions recursivly until you have made a str
        containing all the gates of the circuit

    Base case: 
        1. If only one sub_expression exists, return and_ands(subexpresion)
        2. If there are only 2 sub expressions, return the string of both
             and_ands(subexpersion[0]) and and_ands(subexpersion[1])
    Iterative case: 
        Assuming 
            1. I can call and_ors on sub_exper_i and sub_expr_i+1 and they will
                return valid strings of circuits
             
OPTIMIZATION ADDED:
    If any of the two functions returns a string that already exists, 
        omit that string in the final output (removes repition).
Side note: 
    The purpose of gate_section parsing is so logic gates for
        each output do not have name collisions

"""

def make_simp_SOP_circ(file_path, inputs, sumOfProducts, outputs):
    and_gate_his=dict()
    or_gate_his=dict()
    def remove_paren(string):
        if(string[0]=="("):
            return string[1:-1]
    def add_ands(lis,gate_subsection):
        #B.C. 1
        if len(lis)==1:
            if "~" in lis[0]:
                return ("",lis[0][1:]+"n")
            else:
                return ("", lis[0])
            
        #B.C. 2
        elif len(lis)==2:

            # cases on if any of the gates are NOT'd 
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
            
        #iturtitive case
        else:
            len_h=len(lis)//2
            res_gates=(add_ands(lis[:len_h],gate_subsection+"0"), add_ands(lis[len_h:], gate_subsection+"1"))
            new_contents=""

            #OPTIMZATION 
            if (res_gates[0][1], res_gates[1][1]) in and_gate_his:
               return ("",and_gate_his[(res_gates[0][1], res_gates[1][1])])
            else:
                new_contents= gate_subsection+" = and("+res_gates[0][1]+","+res_gates[1][1]+")\n"
                return (res_gates[0][0]+res_gates[1][0]+new_contents, gate_subsection)

    def add_ors(sub_expressions, gate_section="G"):
        new_contents=""
        length=len(sub_expressions)
        length_h=length//2

        #B.C. 1
        if length==1:
            lis_subterms=[s.strip() for s in sub_expressions[0].split(" & ")]
            return add_ands(lis_subterms,gate_section+"D")
        
        #B.C.2
        elif length==2:
            lis_subterms=([s.strip() for s in sub_expressions[0].split(" & ")], [s.strip() for s in sub_expressions[1].split(" & ")])
            res_gates=(add_ands(lis_subterms[0],gate_section+"0D"), add_ands(lis_subterms[1],gate_section+"1D"))

            #OPTIMIZATION
            if (res_gates[0][1], res_gates[1][1]) in or_gate_his:
                return ("",or_gate_his(res_gates[0][1], res_gates[1][1]))

            new_contents= gate_section+" = or("+ res_gates[0][1]+ ","+res_gates[1][1]+")\n\n"
            return (res_gates[0][0]+res_gates[1][0]+new_contents, gate_section)
        
        #ituritive Case
        else:
            res_gates=(add_ors(sub_expressions[:length_h],gate_section+"0"), add_ors(sub_expressions[length_h:],gate_section+"1"))
            
            #OPTIMIZATION
            if (res_gates[0][1], res_gates[1][1]) in or_gate_his:
                return ("", or_gate_his[(res_gates[0][1], res_gates[1][1])])

            new_contents= gate_section+" = or("+ res_gates[0][1]+ ","+res_gates[1][1]+")\n\n"
            return (res_gates[0][0]+res_gates[1][0]+new_contents, gate_section)


    os.system("touch "+file_path)
    sop_file=""
    inv_inputs=[]
    #make inputs and inverted inputs in file
    for i in inputs:
        sop_file+="\nINPUT("+i+")"
        sop_file+="\n"+i+"n = not("+i+")"
        inv_inputs.append(i+"n")
    for o in outputs:
        sop_file+="\nOUTPUT("+o+")"

    sop_file+="\n\n"
    #logic overall
    gate_history=dict()

    #write the circuit for every output
    for output_name, bool_expr_str in sumOfProducts.items():

        # split the boolean expression by ors and put it in a list
        sub_expressions=[remove_paren(s.strip()) for s in bool_expr_str.split(" | ")]
        txt_circuit=add_ors(sub_expressions,output_name)
        sop_file+="\n\n"
        sop_file+=txt_circuit[0]
    writeFile(file_path,sop_file)