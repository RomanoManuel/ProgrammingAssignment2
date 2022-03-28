makeCacheMatrix <- function(x = matrix()) {
  k <- NULL ##set variable null
  set <- function(y){
  x <<- y ## Assign a value to an object in an environment that is different from the current environment
  k <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) k <<- inverse ##set inverse in the cache
  getInverse <- function() k
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
  k <- x$getInverse()
  if(!is.null(k)){
  message("cache data") 
  return(k) ## Return the inverse of x
  }
  mat <- x$get()
  k <- solve(mat,...)
  x$setInverse(k)
  j
}
