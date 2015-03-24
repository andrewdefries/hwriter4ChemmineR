hwriter4ChemmineR
=================

-Brief description: This repo contains executable scripts in the R programming language and BASH code to make html tables of nearest neighbor matrices. 

-Motivation: Required an easy way to create an html table for nearest neighbor matrix derived by Tanimoto tests. 

-Example: The R script hwriteMoreNow.R integrates the hwriter package to print tables from an SDF via ChemmineR. 


Dependencies
===
-Brief: Required R 3.0 or greater working environment, Open Babel, and R packages (ChemmineR, hwriter)
To install R see:

http://cran.r-project.org/

To install Open Babel see:

http://openbabel.org/

to test install of Open Babel type the following in the terminal:

```
babel -H
```

How to use this:

-open an R session in the dedicated git directory and type source("hwriteMoreNow.R")

-be sure to have firefox installed for auto browser launch, otherwise open test.html for nnm table with compounds shown in each cell of the matrix.

-see the data workflow via the mindmap or associated png

The test.html is in the following form: 

The columns are nearest_neighbor1,	nearest_neighbor2, ...	

Each row has the query compound in the first cell
