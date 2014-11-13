source("")
source("")
data <- read.csv("ex1data2.csv", header = F)
linear_regression <- function(){
	
	x <- data[, c(1, 2)]
	y <- data[, 3]
	
	mu <- rep(0, ncol(x))
	sigma <- rep(0, ncol(x))

	x <- featureNormalize(x, mu, sigma)
	x <- cbind(rep(1, length(x)), x)
	theta <- rep(0, ncol(x))
	cost <- costFunction(x, y, theta)
	theta <- gradient_descent(x, y, theta)
}

