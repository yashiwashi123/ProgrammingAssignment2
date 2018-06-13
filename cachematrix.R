## Goal: I am going to make it possible to cache the inverse of a matrix. I am doing this because 
##it is costly to repeatedly invert a matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <-function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function will check to see if the matrix has an inverse cached, if not it will
##calculate and store it

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  #if inverse has been calculated
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  #if not, calculate the inverse
  data <- x$get()
  inv <- solve(data,...)
  
  #sets the value of inverse in cache
  x$setinverse(inv)
  inv
  
  
  
}
