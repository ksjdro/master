#myvar1
myvar1 <- matrix(1:10, nrow=5, ncol=2)
expected1 <- t(myvar1)
assert <- all.equal(mytranspose(myvar1), expected1)
print(paste0("Test myvar1: ", assert))

myvar1 <- matrix(NA, nrow=0, ncol=0)
expected2 <- matrix(NA, nrow=0, ncol=0)
assert <- all.equal(mytranspose(myvar1), expected2)
print(paste0("Test myvar1: ", assert))

myvar1 <- matrix(c(1,2), nrow=1, ncol=2)
expected3 <- matrix(c(1,2), nrow=2, ncol=1)
assert <- all.equal(mytranspose(myvar1), expected3)
print(paste0("Test myvar1: ", assert))

myvar1 <- matrix(c(1,2), nrow=2, ncol=1)
expected4 <- matrix(c(1,2), nrow=1, ncol=2)
assert <- all.equal(mytranspose(myvar1), expected4)
print(paste0("Test myvar1: ", assert))

#myvar2
myvar2 <- c(1,2,NA,3)
expected5 <- t(matrix(c(1,2,NA,3)))
assert <- all.equal(mytranspose(myvar2), expected5)
print(paste0("Test myvar2: ", assert))

myvar2 <- c(NA)
expected6 <- matrix(as.numeric(c(NA)))
assert <- all.equal(mytranspose(myvar2), expected6)
print(paste0("Test myvar2: ", assert))

myvar2 <- c()
expected7 <- NULL
assert <- all.equal(mytranspose(myvar2), expected7)
print(paste0("Test myvar2: ", assert))

#mydata3
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)

expected8 <- t(matrix(as.matrix(mydata3), nrow = nrow(x), ncol = ncol(x)))
assert <- all.equal(mytranspose(mydata3), expected8)
print(paste0("Test mydata3: ", assert))

