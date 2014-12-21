##takes a matrix myX and caches it in X and returns X
#also creates the Xinv variable which holds the inverse when needed
makeCacheMatrix <- function(myX = matrix()) {
        Xinv <<- NULL
        X <<- myX
        X
}


##takes a matrix myX and return its inverse
cacheSolve <- function(myX, ...) {
#if the inverse haven't been calculated yet or the the matrix myX has changed from X
#we cache the matrix myX compute the inverse and cache it in Xinv then we return it
        if((is.null(Xinv))||(!identical(X,myX))) {
                X <<- myX
                Xinv <<- solve(X)
                return(Xinv)
        }
#if the inverse has been already computed and the matrix myX hasn't 
#changed from X, we return the cached inverse Xinv
        message("getting matrix inverse")
        Xinv
}
