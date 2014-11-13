gradient_descent <- function(x, y){
	temp <- rep(1, length(x))
	x <- cbind(temp, x)
	theta <- c(0, 0)
	iterations <- 1500
	learning_rate <- 0.01
	costFunction(x, y, theta)
}
