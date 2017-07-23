## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv = NULL
  setMatrix = function(r){
    x <<- r
    inv <<- NULL
  }
  getMatrix = function() x
  setInvMatrix = function(inverse) inv <<- inverse
  getInvMatrix = function() inv
  list(set=setMatrix, get=getMatrix, setinverse=setInvMatrix,getinverse=getInvMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inv = x$getinverse()
    if(!is.null(inv)) {
      message("Retrieving Cached data")
      return(inv)
    }
    CMatrix = x$get()
    inv = solve(CMatrix)
    x$setinverse(inv)
    inv
        ## Return a matrix that is the inverse of 'x'
}
