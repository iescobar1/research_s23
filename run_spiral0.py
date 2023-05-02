#library used to input terminal prompt 
import os

def writeFile(path, contents):
    with open(path,"wt") as f:
        f.write(contents)

def readFile(path):
    with open(path, "rt") as f:
        return f.read()

#BEFORE DO ANYTHING:
#   Be sure your sim_arg_file has your normal test line replaced with 
#   "insert_test"
workspace='spiral_testing_0/digital/gcd/'
sim_arg_file = readFile(workspace+'verif/src/rtl.args')
syn_config_file= readFile(workspace+'syn/src/config.tcl')

tests= ["fft_fx64_it_rdx8_w256"]

for test in tests:
    #1. Write and run simulation files
    new_content = sim_arg_file.replace("insert_test",test)
    writeFile(workspace+'verif/src/rtl.args', new_content)
    os.system("cd "+workspace+"sim ; xrun -f ../verif/src/rtl.args")
    writeFile(workspace+'verif/src/rtl.args',sim_arg_file)

    #2. Write and run synth files

    new_content = syn_config_file.replace("insert_test",test)
    writeFile(workspace+'syn/src/config.tcl',new_content)
    os.system("cd "+workspace+"syn/WORK; genus -f ../src/run.tcl")
    writeFile(workspace+'syn/src/config.tcl', syn_config_file)

    #3. Save results synthesized
    for report in ['final_time.rpt','final_area.rpt', 'sim_power.rpt']:
        mkdir='mkdir -p saved_reports/'+test+';'
        moving_report= 'mv '+workspace+'syn/WORK/reports/'+report+' saved_reports/'+test+'/'+report
        os.system(mkdir+moving_report)
    
    #NEED TO PUT YOU ANDREW PASSWORD HERE
    #this is used if you expect your tests accumulated will take longer than a day
    os.system("echo [INPUTYOURANDREWPASSWORD] | kinit && aklog ece.cmu.edu andrew.cmu.edu")
    #resets token everytime





