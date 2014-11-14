source("single_feature_costFunction.R")
source("single_feature_gradient_descent.R")
data <- read.csv("ex1data1.csv", header = F)
linear_regression <- function(){
	
	x <- data[, 1]
	y <- data[, 2]
	
	x <- cbind(rep(1, length(x)), x)
	theta <- rep(0, 2)
	cost <- costFunction(x, y, theta)
	plot(x[, 2], y, col = "red", pch = 4)
	theta <- gradient_descent(x, y, theta)
	abline(theta[1], theta[2], col = "blue", lwd = 4)
}

