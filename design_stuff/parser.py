from enum import Enum
import numpy as np
import csv
import os

def writeFile(path, contents):
    with open(path,"wt") as f:
        f.write(contents)

def readFile(path):
    with open(path, "rt") as f:
        return f.read()

def readArea(areaFile, resultSet):
    first_inst= False
    for line in areaFile.split("\n"):
        if "dft_top" in line:
            if first_inst:
                values=line.split()
                resultSet["total area"]=values[4]
            first_inst=True


def readPower(powerFile, resultSet):
    first_inst= False
    for line in powerFile.split("\n"):
        if "dft_top" in line:
            if first_inst:
                values=line.split()
                #leakage power, dynamic power, total power
                resultSet["leakage power"]=values[2]
                resultSet["dynamic power"]=values[3]
                resultSet["total power"]=values[4]
            first_inst=True

                

def readTime(timeFile, resultSet):
    for line in timeFile.split("\n"):
        #startpoint, endpoint, datapath, slack
        if "Start" in line:
            resultSet["startpoint"]=(line.split()[-1])
        if "End" in line:
            resultSet["endpoint"]=(line.split()[-1])
        if "Data" in line:
            resultSet["datapath time"]=(line.split()[-1])
        if "Slack" in line:
            resultSet["slack"]=(line.split()[-1])
            
        

def read_parameters():
    rootDir = '/afs/ece.cmu.edu/usr/iescobar/private/research_s23/saved_reports'
    prevDir=os.getcwd()
    os.chdir(rootDir)
    results=[]
    for dirName, subdirList, fileList in os.walk("."):
        if not fileList: #if empty 
            continue
        #1st graph, multi column (all designs) sectioned by total_power;dynamic power; leakage power
        #2nd+3rd graph, area in comparison to GAP and data_path_time (or latency)

        #[testname,gaps, latency, total area, startpoint, endpoint, datapath time, slack, leakage power, dynamic power, total power]
        testName=dirName.split("/")[-1]
        rtl= readFile('/afs/ece.cmu.edu/usr/iescobar/private/research_s23/spiral_testing_0/digital/gcd/rtl/'+testName+"/chip.v")
        
        resultSet={
            "testName":testName,
            "latency":"",
            "gap":"", 
            "total area":"",
            "startpoint":"",
            "endpoint":"",
            "datapath time": "",
            "slack":"",
            "leakage power":"",
            "dynamic power":"",
            "total power":""
        }

        firstIter=True

        for line in rtl.split("\n"):
            if "Latency" in line and firstIter:
                resultSet["latency"]=(line.split()[-2])
                firstIter=False
            if "Gap" in line:
                resultSet["gap"]=(line.split()[-1])
                break

                
        
        for fileName in fileList:
            if "final_area" in fileName:
                finalArea=readFile(dirName+"/"+fileName)
                readArea(finalArea, resultSet)
            if "final_time" in fileName:
                finalTime=readFile(dirName+"/"+fileName)

                readTime(finalTime, resultSet)
            if "sim_power" in fileName:
                simPower=readFile(dirName+"/"+fileName)

                readPower(simPower, resultSet)
        results.append(resultSet)

    os.chdir(prevDir)
    return results

        
#write all the data to google sheets 
with open("results.csv", "wt",) as myfile:
    writer= csv.writer(myfile)
    fieldNames=["testName", "latency", "gap", "total area",
    "startpoint", "endpoint", "datapath time", "slack", 
    "leakage power", "dynamic power", 
    "total power"]
    writer = csv.DictWriter(myfile, fieldnames=fieldNames)
    writer.writeheader() 
    sorted_data= sorted(read_parameters(), key=lambda d : d['testName'])
    writer.writerows(sorted_data)
            

