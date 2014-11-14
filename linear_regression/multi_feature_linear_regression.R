source("./featureNormalize.R")
source("./multi_features_gradient_descent.R")
data <- read.csv("ex1data2.csv", header = F)
linear_regression <- function(){
	
	x <- data[, 1:2]
	y <- data[, 3]
	

	#x <- featureNormalize(x)
	x <- as.matrix(cbind(rep(1, nrow(x)), x))
	theta <- rep(0, ncol(x))

	#cost <- costFunction(x, y, theta)
	theta <- gradient_descent(x, y, theta)

	print("Make a prediction")
	#Normalize the features
	#feature_1 <- (1650 - mu[1]) / sigma[1]
	#feature_2 <- (3 - mu[2]) / sigma[2]
	#predict = c(1, feature_1, feature_2)
	predict = c(1, 1650, 3)
	cat("1650m^2, 3 bedrooms = ", as.numeric(predict %*% theta), "\n")
}

