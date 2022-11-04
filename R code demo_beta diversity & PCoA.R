#The following code is for the calculation of beta diversity, PCoA analysis, and graphing using
##1.OTU table data;
##2.the group information.

#As a demo, We used the source data of Fig.2d (beta diversity).
##Input:
###1.OTU table data: the file named "otu_table.txt" in the demo folder;
###2.the group information: the file named "otu_table_treatment in the demo folder.
##Output:
###1.PCoA figure: the file named "demo_output_beta diversity_otu level.pptx"

#All other OTU table data and the group information involved in this study can be found the in source data package.
#Tips: the data file should be transformed to "csv" or "txt" format before being loaded to this program.

#Loading analysis packages
library(vegan)
library(ape)
library(ggplot2)
library(devtools)
library(export)
#devtools::install_github("tomwenseleers/export")

#Loading data
otu <- read.table("demo_intput_otu_table.txt", header = TRUE)
design <- read.table("demo_intput_otu_table_treatment.txt", header = TRUE)
aa<-otu

#replacing NA values with zeros
aa[is.na(aa)] <-0

#PCoA analysis
data <- vegdist(t(aa), method = "bray")
pcoa<- pcoa(data, correction = "none", rn = NULL)

##calculating PC1&PC2
PC1 = pcoa$vectors[,1]
PC2 = pcoa$vectors[,2]

##constructing data frame
index<- data.frame(rownames(pcoa$vectors),PC1,PC2,design)

##setting row name
colnames(index ) <-c("sample","PC1","PC2","group")

##convert PC scale
pc1 <-floor(pcoa$values$Relative_eig[1]*100)
pc2 <-floor(pcoa$values$Relative_eig[2]*100)

##PERMANOVA
adonis(t(aa) ~ Treatment, data = design, permutations = 1000, method = "bray")
otu.adonis=adonis(data~Treatment,data = design,distance = "bray")

#graphing
ggplot(index, aes(PC1, PC2)) + geom_point(aes(colour=group,shape=group),size=5)+
  scale_shape_manual(values=c(1,19,19,17,19,17,19,17))+
  scale_fill_manual(values=c("#A5A5A5","#DAE3F3","#8FAADC","#8FAADC","#4472C4","#4472C4","#ED7D31","#ED7D31"))+
  scale_color_manual(values=c("#A5A5A5","#DAE3F3","#8FAADC","#8FAADC","#4472C4","#4472C4","#ED7D31","#ED7D31"))+
  xlab(paste("PC1 ( ",pc1,"%"," )",sep="")) +
  ylab(paste("PC2 ( ",pc2,"%"," )",sep=""))+
  geom_vline(aes(xintercept = 0),linetype="dotted")+geom_hline(aes(yintercept = 0),linetype="dotted")+
  #stat_ellipse(aes(color=group),linetype="dotted",lwd=0.8,level = 0.95,alpha = 1.0)+
  theme_bw()
graph2ppt(file="demo_output_beta diversity_otu level.pptx", width=7, height=5)

