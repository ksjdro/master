myvar1 <- matrix(c(1, 2, 3, 4), nrow=2, ncol=2)
expected1 <- matrix(c(1, 3, 2, 4), nrow=2, ncol=2)
assert <- all.equal(mytranspose(myvar1), expected1)
print(paste0("Test myvar1: ", assert))

myvar2 <- matrix(c(5, 6, 7, 8), nrow=2, ncol=1)
expected2 <- matrix(c(5, 6, 7, 8), nrow=1, ncol=2)
assert <- all.equal(mytranspose(myvar2), expected2)
print(paste0("Test myvar2: ", assert))
