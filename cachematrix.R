## To be able to cache the inverse of a matrix 


## The function can set the matrix value and cache the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
   m <- NULL
   set <- function(y) {
       x <<- y
       m <<- NULL

}

get <- function()x
setinverse <- function(solve) m<<- solve
getinverse <- function()m
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## The function is to retrieve the inverse from the cache if the inverse has been
## calculated. If not, it inverses the matrix. 

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
         message("getting cached data")
         return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
        ## Return a matrix that is the inverse of 'x'
}
