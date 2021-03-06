#################
library(ChemmineR)
#################

source("CleanSDF.R")

files<-list.files(pattern="Cleaned.sdf", recursive=F)

t<-1

sdfset<-read.SDFset(files[t])
###############
cid(sdfset)<-sdfid(sdfset)
#write.SDF(sdfset,file="load_me.sdf", sig=T)
###############

################
smiset<-sdf2smiles(sdfset) #(sdfset[1:2])
cid(smiset)<-cid(sdfset)
################

#########################
WriteSdfOut<-function(a){
#########################
write.SDF(sdfset[[a]], file=paste(cid(sdfset[a]), ".sdf", sep=""), sig=T, cid=T)
}
#########################
a<-1:length(smiset) #change to 2 for testing
lapply(a,WriteSdfOut)
#########################

#########################
WriteSmiOut<-function(a){
#########################
write.SMI(smi=smiset[a], file=paste(cid(sdfset[a]), ".smi", sep=""), cid=T)
}
#########################
a<-1:length(smiset) 
lapply(a,WriteSmiOut)
#########################

#########################
system("for i in *.smi
do babel $i -O $i.png 
done")
#########################

#########################
#system("for i in *.smi
#do babel $i -O $i.svg
#done")
#########################

#########################
system("for i in *.smi.png
do cat A B C > $i.html
echo $i >> $i.html
cat D >> $i.html
echo $i | sed 's/\\.smi.png/\\.sdf/g' >> $i.html
cat E >> $i.html
done")
#########################



source("hwriteMore.R") 
###############
#system("firefox test.html")
###############
#to do
#add smiles field
#add links to wikipedia page from chembrain repo
#fix ChemmineR problem to export cid of smiset
#use trimNeihbors of nnm to print each clid with min members in rgl space
#highlight compounds in cluster and print cid in webGL out
