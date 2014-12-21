## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(myX = matrix()) {
        Xinv <<- NULL
        X <- myX
}


## Write a short comment describing this function

cacheSolve <- function(myX, ...) {
        ## Return a matrix that is the inverse of 'x'
        if(!is.null(Xinv)&&(myX==X)) {
                message("getting matrix inverse")
                return(Xinv)
        }
        X <<- myX
        Xinv <<- solve(X)
        Xinv
}
