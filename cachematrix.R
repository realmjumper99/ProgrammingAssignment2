## Put comments here that give an overall description of what your
## functions do

## This function is used to cacher the matrix and save a list with the various transformations of it

makeCacheMatrix <- function(x = matrix()) {
  inv = NULL
  setMatrix = function(r){
    x <<- r
    inv <<- NULL
  }
  getMatrix = function() x
  setInvMatrix = function(inverse) inv <<- inverse # invert the matrix
  getInvMatrix = function() inv
  list(set=setMatrix, get=getMatrix, setinverse=setInvMatrix,getinverse=getInvMatrix) ## Returns the list of variables needed
}


## This function is used to return an inverse matrix to the one submittted. If it is already cached it will pull from the cached matrix

cacheSolve <- function(x, ...) {
    inv = x$getinverse()
    if(!is.null(inv)) {                       ## Checks to see if the inverse has been run before
      message("Retrieving Cached data")
      return(inv)
    }
    CMatrix = x$get()
    inv = solve(CMatrix)
    x$setinverse(inv)
    inv
        ## Return a matrix that is the inverse of 'x'
}
