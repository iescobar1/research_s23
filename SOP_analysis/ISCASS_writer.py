import os


def writeFile(path, contents):
    with open(path,"wt") as f:
        f.write(contents)

def readFile(path):
    with open(path, "rt") as f:
        return f.read()

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