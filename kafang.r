# Rscript 
# Auther: Linhe Sun
# Note: df = 1, P 0.05 = 3.84, P 0.01 = 6.63

kafang <- function(x) {
	nbig <- max(x)
	nsmall <- min(x)
	ebig <- sum(x)*3/4
	esmall <- sum(x)/4
	kasquare <- (abs(nbig - ebig) - 0.5)^2/ebig + (abs(nsmall - esmall) - 0.5)^2/esmall
	return(kasquare)
	}

args <- commandArgs(TRUE)
for (i in 1: length(args)) {
	phenodata <- read.table(args[i], row.names = 1, header = TRUE)
	phenodata$chisquare <- apply(phenodata, 1, kafang)
	phenodata$fitness <- phenodata$chisquare <= 3.84
	write.table(phenodata, paste(args[i], "chisrquare.txt", sep = ""), quote = FALSE)
	}
