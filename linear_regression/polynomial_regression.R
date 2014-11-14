source("./featureNormalize.R")
source("./multi_features_gradient_descent.R")
data <- read.csv("ex1data1.csv", header = F)
linear_regression <- function(){
	
	x <- data[, 1]
	y <- data[, 2]
	
	x2 <- x^2
	x3 <- x^3
	x <- cbind(x, x2, x3)
	x <- featureNormalize(x)
	x <- as.matrix(cbind(rep(1, nrow(x)), x))
	theta <<- rep(0, ncol(x))

	plot(x[, 2], y, col = "red", pch = 4)
	theta <<- gradient_descent(x, y, theta)
	pol <- function(x) theta[1] + theta[2] * x + theta[3] * x^2 + theta[4] * x^3
	curve(pol, col = "red", add = T)
	#plot(x[, 2], y, col = "red", pch = 4)
	#points(x[, 2], y, type = "p", pch = 4, col = "red")
}

