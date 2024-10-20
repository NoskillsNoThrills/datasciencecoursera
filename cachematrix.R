## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The below defines the matrix using the new operator to 
## assign the object
##  then it gets the matrix folowed by the inverse matrix
##  then provides it as list
makeCacheMatrix <- function(x = matrix()) {
  i <- function(y) {
    x<<-y
    i <<- NULL
  }
  
  get <- function()x
  
  setInverse <-function(inverse) i <<- inverse
  
  getInverse <- function() i
  
  list(set= set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function


## retrieves cached inverse matrix if it exists
## if not it calculates it, caches it then prints it
## manipulated null statement from coursera assignment page

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  i <- x$getInverse()
  
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  
  m <- get$get()
  i <- solve(m, ...)
  
  x$setInverse(i)

  i
}

