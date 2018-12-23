Finding A Good High School -- Group project for Relational Database class. 
Members:  Lashana Tello, Xiaoning Wang, Jasmeet Narang, Maria Volpe

We needed a way to efficiently search for a good high school that we would want our kids or loved ones to attend
We needed some sort of application that would return possible high schools based on what we were looking for in a good high school 
For example:
schools in Queens with an average score of at least 700 on the math section of the SAT
schools with an average class size less than 22
schools close to the A train with a graduation rate greater than 70%

We decided to use NYC Open Data and the DOE’s (Department of Education) data on high schools in New York City 
We extracted all the data we would need to decide whether or not a high school was good and created our own tables 
Created a database that facilitates searching for schools that fit the user’s description of a good high school

Used 3 datasets pertaining to NYC high schools from NYC Open Data
They contained the school name, the location (street address, borough, zip code, average SAT score on Math section, graduation rate, etc.)
Dataset 1: 2018 DOE High School Directory
Dataset 2: 2015 - 2016 Final Class Size Report City Middle and High School Class Size Distribution
Dataset 3: 2017 - 2018 High School Quality Report

WHAT MAKES A SCHOOL A ‘GOOD FIT’?
Graduation rate
High SAT or ACT scores
Size of classes (smaller is generally considered better)
Size of school (depends on what a parent or child wants)
Close to home
Accessible by bus or subway line near home


# Finding A Good High School
A database of NYC high schools and information about them, designed to help parents and guardians find a high school that fits their needs.

Written for MariaDB v10.3.9.

## Run instructions

From within the main folder (DBPROJECTHS), open your MariaDB shell.
Then run:
```
source scripts/load.sql
source scripts/normalize.sql
```

To load the data as it is from the data sheets with some preprocessing, and then to normalize the data according to our database design.

Run
```
source scripts/queries.sql
```
to run some sample queries.
