# Fungal-communities-in-agricultural-soils

*Necessary software*

Some of the data analysis in this study was based on R and RStudio (open source).
The latest version of these open source software can be downloaded from the official website:
1.R: https://cran.rstudio.com/
2.RStudio: https://posit.co/download/rstudio-desktop/

---

*Steps for demo running*

1.install R and then RStudio;
2.run RStudio;
3.set the demo folder as the "Working Directory" of RStudio;
4.double click the code files "R code demo_alpha diversity.R" or "R code demo_beta diversity & PCoA.R";
5.run the code.(please accept if necessary R packages were requested to install)

---

*How to use the code*

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

All other OTU table data and the group information involved in this study can be found the in source data package.
Tips: the data file should be transformed to "csv" or "txt" format before being loaded to this program.
