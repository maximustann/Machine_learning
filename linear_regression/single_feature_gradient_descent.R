gradient_descent <- function(x, y, theta){

	m <- length(y)
	iterations <- 1500
	learning_rate <- 0.01

	for(i in 1:iterations){
		temp <- (x %*% theta - y)
		theta[1] <- theta[1] - learning_rate * (1 / m) * sum(temp)
		theta[2] <- theta[2] - learning_rate * (1 / m) * sum(temp * x[, 2])
		if(i %% 100 == 0){
			abline(theta[1], theta[2], col = "red")
		}
	}
	theta
}
