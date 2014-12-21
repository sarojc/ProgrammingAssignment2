### Introduction

Contains the Solution to the Assignment 2
Please refer the cachematrix.R file.

### Test Cases
x<- matrix(1:4, 2,2)
mat <- makeCacheMatrix(x)
First Run
cacheSolve(mat)
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
Sub-sequent Runs, gettting from Cache
cacheSolve(mat)
getting cached data
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
cacheSolve(mat)
getting cached data
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5

