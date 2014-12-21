## Matrix inversion is usually a costly computation and there 
## may be some benefit to caching the inverse of a matrix rather
## than computing it repeatedly.
##
## This program is to write a pair of functions that cache the 
## inverse of a matrix also this program assumes that the matrix supplied is
## always invertible

## Creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y){
    
        x <<- y
        inverse <<- NULL
    }
  
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Computes the inverse of the special "matrix" returned by 
## makeCacheMatrix above. If the inverse has already been 
## calculated (and the matrix has not changed), then cacheSolve 
## should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
        ## Tries to get from Cache 
        inverse <- x$getinverse()
        
        ## Checks if the object is returned from Cache, if so returns the inverse
        if(!is.null(inverse)) {
            message("getting cached data")
            return(inverse)
        }
  
        ## Object is not in cache, computes the cache, stores in cache and returns 
        ## the object.
        data <- x$get()
        inverse <- solve(data)
        x$setinverse(inverse)
        inverse
}

## Test Cases
## > x<- matrix(1:4, 2,2)
## > mat <- makeCacheMatrix(x)
## > cacheSolve(mat)
## [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5
##
## Subsequent Runs
## > cacheSolve(mat)
## getting cached data
## [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5

