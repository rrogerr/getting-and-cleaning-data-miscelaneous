library("rhdf5")

H5close()

#created = h5createFile("example.h5")

#created = h5createGroup("example.h5", "foo")
#created = h5createGroup("example.h5", "baa")
#created = h5createGroup("example.h5", "foo/foobaa")

A <- rep(1:3, each = 4)
h5write(A, "example.h5", "foo/A")
B <- data.frame(shakira = c(1, 2, 3), rihanna = c(3, 2, 1))
h5write(B, "example.h5", "baa/B")
C <- matrix(1:10, nrow = 5, ncol = 2)
attr(B, "units") <- "meters"
h5write(C, "example.h5", "foo/foobaa/C")

readC <- h5read("example.h5", "foo/foobaa/C")
readC

h5write(c(69, 96), "example.h5", "foo/foobaa/C", index = list(1, 1:2))

readC <- h5read("example.h5", "foo/foobaa/C")
readC

#h5ls("example.h5")