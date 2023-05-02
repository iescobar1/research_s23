import os

def writeFile(path, contents):
    with open(path,"wt") as f:
        f.write(contents)

def readFile(path):
    with open(path, "rt") as f:
        return f.read()


workspace='spiral_testing_0/digital/gcd/'
sim_arg_file = readFile(workspace+'verif/src/rtl.args')
syn_config_file= readFile(workspace+'syn/src/config.tcl')

tests= ["fft_fx64_it_rdx8_w256"]

#this needs to be deleted:
for test in tests:
    new_content = sim_arg_file.replace("insert_test",test)
    writeFile(workspace+'verif/src/rtl.args', new_content)
    os.system("cd "+workspace+"sim ; xrun -f ../verif/src/rtl.args")
    writeFile(workspace+'verif/src/rtl.args',sim_arg_file)

    new_content = syn_config_file.replace("insert_test",test)
    writeFile(workspace+'syn/src/config.tcl',new_content)
    os.system("cd "+workspace+"syn/WORK; genus -f ../src/run.tcl")
    writeFile(workspace+'syn/src/config.tcl', syn_config_file)

    for report in ['final_time.rpt','final_area.rpt', 'sim_power.rpt']:
        mkdir='mkdir -p saved_reports/'+test+';'
        moving_report= 'mv '+workspace+'syn/WORK/reports/'+report+' saved_reports/'+test+'/'+report
        os.system(mkdir+moving_report)
    #NEED TO PUT YOU ANDREW PASSWORD HERE
    os.system("echo [INPUTYOURANDREWPASSWORD] | kinit && aklog ece.cmu.edu andrew.cmu.edu")#reset token everytime





