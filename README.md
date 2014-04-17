hwriter4ChemmineR
=================

Required software: Installed in the following order from source OpenBabel, R 3.0, ChemmineR, ChemmineOB, hwriter

The R script hwriteMoreNow.R integrates the hwriter package with ChemmineR to print tables from an SDF via ChemmineR. 

How to use this:

-open an R session in the dedicated git directory and type source("hwriteMoreNow.R")

-be sure to have firefox installed for auto browser launch, otherwise open test.html for nnm table with compounds shown in each cell of the matrix.

-see the data workflow via the mindmap or associated png

FYI

The test.html is in the form of


			nearest_neighbor1	nearest_neighbor2	...
query_compound_img	nearest_neighbor2_img	nearest_neighbor2_img	...
	.			.			.
	.			.			.
	.			.			.

