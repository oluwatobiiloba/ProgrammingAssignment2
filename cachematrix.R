## Function returns the inverse matrix of an invertible matrix 

## makeCachematric creates a special matrix

makeCacheMatrix <- function(x = matrix()) { im <- NULL
set <- function(y){
  x<<-y
  im<<- NULL
}
get <- function() x
setinversematrix <- function(inverse.matrix) im <<- inverse.matrix
getinversematrix <- function() im
list(set = set, get = get,setinversematrix = setinversematrix,
     getinversematrix = getinversematrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  im <- x$getinversematrix()
  if (!is.null (im)) {
    message("getting cached data")
    return(im)
  }
  data <-x$get()
  im <- solve(data, ...)
  x$setinversematrix(im)
  im
        ## Return a matrix that is the inverse of 'x'
}
