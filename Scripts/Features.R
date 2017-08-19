#!/usr/bin/env Rscript

library(protr)

args = commandArgs(trailingOnly=TRUE)

fasta_sequences<-	args[1]

fasta_sequences

Pos=readFASTA(fasta_sequences)

Pos=Pos[(sapply(Pos,protcheck))]

pos1=t(sapply(Pos,extractAAC))
pos2=t(sapply(Pos,extractDC))
pos3=t(sapply(Pos,extractMoreauBroto))
pos4=t(sapply(Pos,extractMoran))
pos5=t(sapply(Pos,extractGeary))
pos6=t(sapply(Pos,extractCTDC))
pos7=t(sapply(Pos,extractCTDT))
pos8=t(sapply(Pos,extractCTDD))
pos9=t(sapply(Pos,extractCTriad))
pos10=t(sapply(Pos,extractSOCN))
pos11=t(sapply(Pos,extractQSO))
pos12=t(sapply(Pos,extractPAAC))
pos13=t(sapply(Pos,extractAPAAC))

pos_f=cbind(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,pos10,pos11,pos12,pos13)

write.table(pos_f, sep="\t", "features.txt")



