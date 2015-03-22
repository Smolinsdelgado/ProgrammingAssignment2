## The functions writen in continuation are used to obtein the inverse of a matrix.

## This function creates a list containing the functions for setting and getting the value of a matrix and his inverse. 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## This function the inverse of the matrix cheking first if the inverse has been computed. If it's not computed 
#it computs it and sets the value with the setinverse function.

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- mean(data, ...)
  x$setmean(inv)
  inv
}
