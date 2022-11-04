#System requirements

Some of the data analysis in this study was based on R and RStudio (open source).
The latest version of these open source software can be downloaded from the official website:
1. R: https://cran.rstudio.com/
2. RStudio: https://posit.co/download/rstudio-desktop/

Our code has been tested on the following version of software on Windows 10 (64bit) operation system:
1. R: R for Windows (version: 4.2.2)
2. RStudio: RStudio Desktop for Windows (Version: 2022.07.2+576)

---

###Installation guide

1. It will only take about ten minutes for installation of the software above
2. The installation can be easily done following the guide showed in the installation file. 

---

###Demo

We provide the following files in the demo folder:
1. demo code file No.1: R code demo_alpha diversity.R
2. demo code file No.2: R code demo_beta diversity & PCoA.R
3. demo input file No.1: demo_intput_otu_table.txt
4. demo input file No.2: demo_intput_otu_table_treatment.txt
5. expected output file No.1: demo_output_alpha diversity_otu level.csv
6. expected output file No.2: demo_output_beta diversity_otu level.pptx

The code in the demo folder is for the calculation of alpha & beta diversity using
1.OTU table data;
2.the group information.

As a demo, We used the source data of Fig.2d (beta diversity) and Fig.2f (alpha diversity).
Input:
1.OTU table data: the file named "otu_table.txt" in the demo folder;
2.the group information: the file named "otu_table_treatment in the demo folder.
Output:
1.PCoA figure: the file named "demo_output_beta diversity_otu level.pptx"
2.Shannon, Simpson, Pielou, Chao1: the file named "demo_output_alpha diversity_otu level.csv"

---

###Instructions for use

How to run the code on the demo data:
1.install R and then RStudio;
2.run RStudio;
3.set the demo folder as the "Working Directory" of RStudio;
4.double click the code files "R code demo_alpha diversity.R" or "R code demo_beta diversity & PCoA.R";
5.run the code.(The running should be done in less than a minute. Please accept when necessary R packages were requested to install by the software.)

Reproduction instructions:
1. All OTU table data and the group information involved in this study can be found the in 2. source data package.
Tips: the data file should be transformed to "csv" or "txt" format before being loaded to this program.
