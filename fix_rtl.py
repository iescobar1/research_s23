"""
Purpose:
    when importing rtl files, the testbench code and hardware code are 
    all in one file. In synthesization, you need to seperate the two.
    In addition, you need to add a file of code for dumping the power
    file required for getting simulation power reports.
"""
import os

def writeFile(path, contents):
    with open(path,"wt") as f:
        f.write(contents)

def readFile(path):
    with open(path, "rt") as f:
        return f.read()

#assume we are at cwd:rtl
def make_files(dirName, fileName):
    os.system("touch chip.v testbench.v")
    lines=[] 
    with open(dirName+"/"+fileName, "rt") as f:
        lines=f.readlines()
    with open(dirName+"/chip.v", "wt") as chip , open(dirName+"/testbench.v", "wt") as tb:
    
        testbench_code=False
        first_time=True
        for line in lines:
            if testbench_code & first_time:
                tb.write("\ninitial begin \n\t$dumpfile(\""+(dirName.split("/"))[-1]+".vcd\");\n\t$dumpvars(4);\nend\n\n")
                first_time=False
            
            if "module dft_testbench" in line :
                testbench_code=True
            
            if testbench_code:
                tb.write(line)
            else :
                chip.write(line)
            
            if "endmodule" in line:
                testbench_code=False

    os.system("rm "+dirName+"/"+fileName)
            
            

rootDir = '/afs/ece.cmu.edu/usr/iescobar/private/research_s23/spiral_testing/digital/gcd/rtl'
os.chdir(rootDir)
for dirName, subdirList, fileList in os.walk(rootDir):
    if "chip.v" in fileList:
        continue
    elif len(fileList) :
        os.chdir(dirName)
        make_files(dirName,fileList[0])
        #parse copy/paste sub section into other file 
        #afterwards, input inital block
os.chdir('/afs/ece.cmu.edu/usr/iescobar/private/research_s23')