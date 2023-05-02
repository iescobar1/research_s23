<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://i.imgur.com/6wj0hh6.jpg" alt="Project logo"></a>
</p>

<h1 align="center">Research S23</h1>

<div align="center">

</div>

---

<p align="center"> Contact me if there is any confusion or would like to learn more
    <br> 
</p>
<p align="center"> Iescobar@andrew.cmu.edu
    <br> 
</p>

# 📝 Table of Contents

- [📝 Table of Contents](#-table-of-contents)
- [About](#about)
- [Spiral, Cadence, and Performance Analysis](#spiral-cadence-and-performance-analysis)
  - [Design synthesizing](#design-synthesizing)
  - [Retrieving results](#retrieving-results)
    - [Matlabplotlib](#matlabplotlib)
    - [CSV files](#csv-files)
    - [Final results](#final-results)
  - [Library functions used](#library-functions-used)
    - [OS library](#os-library)
    - [CSV library](#csv-library)
- [Sum Of Products optimizations ](#sum-of-products-optimizations-)
  - [Implementations](#implementations)
  - [Library functions used](#library-functions-used-1)
    - [Pyeda](#pyeda)
    - [Sympy ](#sympy-)
    - [Cframe](#cframe)

# About<a name = "about"></a>

During this semester, I worked under Mckenzie van der Hagen in syntheziable RTL (Fast Fourier Transform/Discrete Fourier Transform applied) encrption schemes that can applied in larger scale computing systems and many other uses.

As I worked under Mckenzie, I would work on simulating and synthezing multiple designs given by
<i>[Spiral](https://pmilder.ece.stonybrook.edu/dftgen_adv/)</i>.
This process required the use of <i>Matplotlib, CSV managemtent, bash/python scripting, </i>and <i>Cadence toolset</i> as 
I would modify multiple tickle files, and make various result files digestable and accessible with spreadsheet graph representations.

Another research topic of interest that was looked upon was trascribing possibly used circuits into a Sum Of Products circuit. I would be provided ISCASS files to work on such circuit and boolean analyzation.
Such tools ranged from <i>[pyeda](https://pyeda.readthedocs.io/en/latest/), [sympy](https://www.sympy.org/en/index.html), </i> and CMU's <i> [Cframe](<./cframe_src/cframe_html/intro.html>).</i> This required alot of looking for possible, reliable boolean algebra libraries and verying iterations
in rearranging the circuit in plausible implementations.

# Spiral, Cadence, and Performance Analysis

## Design synthesizing

When synthesizing the designs, I was assigned to run the <i>[Spiral](https://pmilder.ece.stonybrook.edu/dftgen_adv/)</i> webpage to provide me with FFT/DFT circuits.
Initially, we did a initial test of a *fully streaming* architecture with a iterative but these did not hold sadly. I have included a pretty helpful

```
Give examples
```


End with an example of getting some data out of the system or using it for a little demo.

## Retrieving results

Explain how to run the automated tests for this system.

### Matlabplotlib

### CSV files

### Final results

## Library functions used

### OS library
links:
- [Python documentation](https://docs.python.org/3/library/os.html)
```
Used to traverse files AND do terminal input

    os.walk(dir_name) 
        Parameter
        ------
        dir_name : str
        
        Return
        ------
        void 
            traverses through every possible branch in the directory and its sub branches 
            all the way to the files
        

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
        -----
        str
            The current working directory
        
```
### CSV library
links:

- [python documentation](https://docs.python.org/3/library/csv.html)
- [realpython guide](https://realpython.com/python-csv/)
- [programiz guide](https://www.programiz.com/python-programming/csv)
```
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
            a list of strings containing each attribute you would line to record
            (this will be your first row)
        
    csv.writeheader()
        Required to making the file header (aka first row of the csv file)
        Void

    csv.writerows(result_list) :
        Writes all the rows in the csv file
        *** for dictWriter type only ***
        result_list : list dict
            A list of dictionaries with keys equivilant to fieldNames as specified during instantiation
        
```


# Sum Of Products optimizations <a name="usage"></a>

## Implementations

## Library functions used

### Pyeda

### Sympy <a name = "deployment"></a>

Add additional notes about how to deploy this on a live system.

### Cframe

