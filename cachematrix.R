## Goal: I am going to make it possible to cache the inverse of a matrix. I am doing this because 
##it is costly to repeatedly invert a matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <-function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
