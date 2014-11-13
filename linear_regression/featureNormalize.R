featureNormalize <- function(x, mu, sigma) {
	x_norm <- x

	for(i in 1:ncol(x)){
		mu[i] <<- mean(x[, i])
		sigma[i] <<- std(x[, i])
		x_norm[, i] <- (x[, i] - mu[i]) / sigma[i]
	}
	x_norm
}
