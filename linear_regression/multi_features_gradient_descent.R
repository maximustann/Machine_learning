gradient_descent <- function(x, y, theta){
	m <- length(y)
	iterations <- 1500
	learning_rate <- 0.01
	for(i in 1:iterations){
		for(j in 1:length(theta)){
			temp <- x %*% theta - y
			theta[j] <- theta[j] - learning_rate * (1 / m) * sum(temp * x[, j])
		}
	}
	theta
}
