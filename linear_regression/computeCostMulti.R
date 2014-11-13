costFunction <- function(x, y, theta){
	m <- length(y)
	temp_matrix <- (x %*% theta) - y
	J = (1 / (2 * m)) * sum(temp_matrix^2)
	J
}
