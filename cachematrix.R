## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##this function takes for argument a matrix,creates a null object and sets both of them to a higer order level. 
## then it sets a series of functions that allow to set and get the matrix and its inverse. 

makeCacheMatrix <- function(x) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## Write a short comment describing this function

##This funntion commands the calculation of the inverse of the x matrix with the condition that the i(name for the matrix inverse) 
## is not defined yet in the global environent, in case this premise is false, and the i values is previously defined, 
##then the function will return the saved value for i
cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {
    message("get cache data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
  
}
