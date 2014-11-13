featureNormalize <- function(x) {
	x_norm <- x

	mu <<- rep(0, ncol(x))
	sigma <<- rep(0, ncol(x))

	for(i in 1:ncol(x)){
		mu[i] <<- mean(x[, i])
		sigma[i] <<- sd(x[, i])
		x_norm[, i] <- (x[, i] - mu[i]) / sigma[i]
	}
	x_norm
}
