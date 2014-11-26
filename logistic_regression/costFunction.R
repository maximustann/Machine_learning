costFunction <- function(theta, X, y){
	m <- length(y)
	grad <- matrix(0, nrow = length(theta), ncol = 1)

	temp_1 <- -y * log(sigmoid(X %*% theta))
	temp_2 <- -(1 - y) * log(1 - sigmoid(X %*% theta))
	J = (1 / m) * sum(temp_1 + temp_2)
	for(i in 1:length(theta)){
		grad[i] <- (1 / m) * sum((sigmoid(X %*% theta) - y) * X[, i])
	}
	a <- list(J, grad)
	a
}
