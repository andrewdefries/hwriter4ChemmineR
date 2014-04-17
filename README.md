hwriter4ChemmineR
=================

Required software: Installed in the following order from source OpenBabel, R 3.0, ChemmineR, ChemmineOB, hwriter

The R script hwriteMoreNow.R integrates the hwriter package with ChemmineR to print tables from an SDF via ChemmineR. 

How to use this:

-open an R session in the dedicated git directory and type source("hwriteMoreNow.R")

-be sure to have firefox installed for auto browser launch, otherwise open test.html for nnm table with compounds shown in each cell of the matrix.

-see the data workflow via the mindmap or associated png

FYI

The test.html is in the following form: 

The columns are nearest_neighbor1	nearest_neighbor2	
The row has the query compound in the first cell
