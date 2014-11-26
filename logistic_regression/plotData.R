
plotData <- function(data) {

	pos <- data[data$V3 == 1,]
	neg <- data[data$V3 == 0,]
	plot(pos[,1], pos[, 2], pch=4, col='green', xlab = 'subject A', ylab = 'subject B')
	par(new=T)
	points(neg[,1], neg[, 2], pch=2, col='red')

	legend("topright", legend = c("pos", "neg"), 
		   pch=c(4, 2), col = c("green", "red"))
}

