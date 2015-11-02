# perl-probset-scripts

#### 5 PERL Scripts with at least 50 lines of Code each

#####1) Directory Surveyor

* Prints directory structure recursively
* Option to print in STDOUT or in file (depending on user's input when prompted)


      ./ps1

#####2) LCM, GCF, Prime Factor Generator

* Prints LCM, GCM, and prime factors of the given number pair
* Enter input file at invocation:

      ./ps2 ps2_input
      
* File format should be:

    num1 num2
    
    num3 num4
    ...

* Sample:

    1 5
    
    10 15
    
* Can also accept input via STDIN: 
      
      ./ps2
* Then input numbers by pairs on separate lines

    10 25
    
    10 115
    
#####3) Insertion Sort with Perl
* Insertion sort with perl
* Outputs sorted number sequence in file provided by user
* Reads numbers to be sorted from input file to be provided at commandline
* Sample run: 

      ./ps3 ps3_input
      
* If input file is not provided, input will be fetched from STDIN
* Sample:

    1
    
    2
    
    3
    
    2
    
    1

* Separate lists of numbers with a newline


#####4) Rails Logfile Parser
* Reads from a Rails logfile to be inputted by user (see sample development.log)
* Outputs gets and posts request URLs to files: ps4_output_posts, ps4_output_gets
* Sample run: ./ps4 
* Sample Input: development.log

#####5) Game of Rock, Paper, Scissors
* Game of Rock, Paper, Scissors (Best of 5)
* Computer makes random plays.
* Scores can be stored at the scoreboard.
* Sample run: ./ps5
* Output at: cat ps5_scoreboard



