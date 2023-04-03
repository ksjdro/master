d <- c(1,2,3,4)
e <- c("korea", "usa", "china", "japan")
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)

expected3 <- t(matrix(as.matrix(mydata3), nrow = nrow(x), ncol = ncol(x)))
assert <- all.equal(mytranspose(mydata3), expected3)
print(paste0("Test mydata3: ", assert))

myvar4 <- matrix(1:20, nrow=4, ncol=5)
expected4 <- t(myvar4)
assert <- all.equal(mytranspose(myvar4), expected4)
print(paste0("Test myvar4: ", assert))
