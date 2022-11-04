#The following code is for the calculation of the alpha diversity based on OTU table using OTU table data;

#As a demo, We used the OTU table data of Fig.2f (alpha diversity);
##Input:
###1.OTU table data: the file named "otu_table.txt" in the demo folder;
##Output:
###1. Shannon, Simpson, Pielou, Chao1: the file named "demo_output_alpha diversity_otu level.csv"
#(This code is only for calculation. Figures were graphed separately using Excel.)

#All other OTU table data and the group information involved in this study can be found the in source data package.
#Tips: the data file should be transformed to "csv" or "txt" format before being loaded to this program.

#Loading analysis packages
library(vegan)
library(picante)
library(ggplot2)

#Loading data
otu <- read.table("demo_intput_otu_table.txt", header = TRUE)
#transposition
otu <- t(otu)
#replacing NA values with zeros
otu[is.na(otu)] <-0


alpha <- function(x, tree = NULL, base = exp(1)) {
  est <- estimateR(x)
  Richness <- est[1, ]
  Chao1 <- est[2, ]
  Shannon <- diversity(x, index = 'shannon', base = base)
  Simpson <- diversity(x, index = 'simpson')
  Pielou <- Shannon / log(Richness, base)
  result <- data.frame(Shannon, Simpson, Pielou, Chao1)
  result
}

alpha_all <- alpha(otu, base = 2)

#outputting
write.csv(alpha_all, 'demo_output_alpha diversity_otu level.csv', quote = FALSE)