#Used to make a easily importable spreadsheet file of all results
"""
Used to create new csv files that can be transportated to any spreadsheet media
https://docs.python.org/3/library/csv.html
https://realpython.com/python-csv/
https://www.programiz.com/python-programming/csv

    csv.writer(file_name) 
        Makes a csv.writer type to use esential functions for writing into file
        Parameter 
        -----
        file_name : str

    csv.DictWriter(file_name ,fieldname=[] )
        Makes a csv.dictWriter type for easily translating a dict into a csv file
        Parameter
        -----
        file_name : str
        
        fieldname : lis
            a list of strings containing each attribute you would 
                line to record (this will be your first row)
        
    csv.writeheader()
        Required to making the file header (aka first row of the csv file)
        Void

    csv.writerows(result_list) :
        Writes all the rows in the csv file
        *** for dictWriter type only ***
        result_list : list dict
            A list of dictionaries with keys equivilant to fieldNames as 
                specified during instantiation
        

    
"""
import csv
""" 
Used to traverse files in your directory
https://docs.python.org/3/library/os.html

    os.walk(dir_name) 
        Parameter
        -----
        dir_name : str
        
        Return
        -----
        void 
            traverses through every possible branch in the directory and 
                its sub branches all the way to the files
        

    os.chdir(new_path) 
        Parameter
        ------
        new_path : str
            working directory path    

        Return
        ------
        void 
            changes your current working directory to new_path
    os.getcwd() 
        Return
        str
            The current working directory
        
"""
import os

################################## I/O FILE #################

#read write functions
def writeFile(path, contents):
    with open(path,"wt") as f:
        f.write(contents)

def readFile(path):
    with open(path, "rt") as f:
        return f.read()
    

########################## Helper Functions ###############


"""
readArea, readPower, readTime
...
Parameters
---------
areaFile  : str
    The file in string format to easily parse
resultSet : dict
    Holds all the results of a single test
"""
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


"""
read_parameters
...
through all the saved tests in the saved_reports, we traverse 
    through each one and obtain:
    
    latency
    gap
    total area
    startpoint
    end point
    datapath time
    slack
    leakage power
    dynamic power
    total power

*ONLY FOR FINAL REPORTS* 

After retireving a list of all of these attriubtes of the tests. 

"""         
def read_parameters():
    #BE SURE TO PUT THE DIRECTORY YOU USE FOR SAVED REPORTS
    rootDir = '/afs/ece.cmu.edu/usr/iescobar/private/research_s23/saved_reports'
    prevDir=os.getcwd()
    os.chdir(rootDir)

    #list of resultSet dict with attributes as seen below
    results=[]
    
    # We traverse through the entire saved_reports directory here
    for dirName, subdirList, fileList in os.walk("."):
        if not fileList: #if empty 
            continue

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

                
        #add more types of run tests if you wish to parse more 
        #  and have more reports saved
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


######################### Main ############################


#write all the data to google sheets 
#BE SURE TO TOUCH A RESULT.CSV FILE WHERE YOU WOULD LIKE TO SAVE YOUR RESULTS
with open("results.csv", "wt",) as myfile:
    #writer= csv.writer(myfile)
    fieldNames=["testName", "latency", "gap", "total area",
    "startpoint", "endpoint", "datapath time", "slack", 
    "leakage power", "dynamic power", 
    "total power"]
    writer = csv.DictWriter(myfile, fieldnames=fieldNames)
    writer.writeheader() 
    #return the list of the test results in alphabetical order of testName
    sorted_data= sorted(read_parameters(), key=lambda d : d['testName'])
    #write all the results into the file
    writer.writerows(sorted_data)
            

