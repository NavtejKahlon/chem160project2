dim = c()
for (n in 1:30) {
	dists = c()
	for (i in 1:10000) {
		p1 = runif(n)
		p2 = runif(n)
		dist = sqrt(sum((p1 - p2)^2))
		dists = c(dists,dist)
	}
	mean.dist = mean(dists)
	dim = c(dim,mean.dist)
}
png("plot.png")
plot(dim,main = "Hypercube Line Picking problem",xlab = "Dimentions",ylab = "Average Distance")
x = dev.off()


		
