logistic <- function(){
	data <- read.csv("ex2data1.csv", header = F, sep = ',')
	X <- data[, 1:2]
	y <- data[, 3]
	plotData(data)
	X <- as.matrix(cbind(seq(from = 1, to = 1, length.out = length(y)), X))
	initial_theta <- seq(from = 0, to = 0, length.out = ncol(X))
	result <- costFunction(initial_theta, X, y)
	cost <- result[[1]]
	grad <- result[[2]]
	print(cost)
	print(grad)
}
