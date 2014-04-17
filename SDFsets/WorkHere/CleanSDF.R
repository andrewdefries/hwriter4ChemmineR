##################
library(ChemmineR)
##################

#list sdfsets in directory
files<-list.files(pattern=".sdf", recursive=F)

#load first
sdfset<-read.SDFset(files[1])

#from Chemminetools repo, make function to clean char input that causes escape errors
###########################
cleanUp <- function(input){
     input <- gsub("[^a-zA-Z_0-9 -]", " ", input, perl=TRUE) # remove weird chars
     gsub("^\\s*(.{1,80}).*\\s*$", "\\1", input, perl=TRUE) # limit length to 80 and remove whitespace
}
###########################

# clean up input:
########################################
sdfset <- sdfset[validSDF(sdfset)]
cids <- sdfid(sdfset)
cids <- cleanUp(cids)
sdfset <- sdfset[! duplicated(cids)]
cids <- cids[! duplicated(cids)]
########################################


#assign names from sdfid slot
cid(sdfset)<-sdfid(sdfset)

cid(sdfset)<-gsub("\\?", "X", cid(sdfset))
cid(sdfset)<-gsub("\\=", "_", cid(sdfset))
cid(sdfset)<-gsub("\\/", "_", cid(sdfset))
cid(sdfset)<-gsub(" ", "_", cid(sdfset))
cid(sdfset)<-gsub("\\(", "X", cid(sdfset))
cid(sdfset)<-gsub("\\)", "X", cid(sdfset))


#apset validation to weed out broken molecules
apset<-sdf2ap(sdfset)
sdfset<-sdfset[!sapply(as(apset,"list"), length)==1]



#spit out clean SDF
write.SDF(sdfset, file=paste(gsub(".sdf", "", files[1]), "_Cleaned.sdf", sep=""), sig=T, cid=T)



