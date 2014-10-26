## Put comments here that give an overall description of what your
## functions do

## This function is pretty similar to the example function. Its final product is a list of functions that 
## first sets the matrix, then gets it, then sets the inverse and then gets that. To get there, I 

makeCacheMatrix <- function(Matrix = matrix()) {
  Cache <-NULL
  set<-function(y){
    Matrix<<- y
    Cache <<-NULL
  }
  get<-function() Matrix
  setinverse <-function(inverse) Cache <<- inverse
  getinverse<-function() Cache
  list(set=set, get=get,setinverse=setinverse,getinverse=getinverse)
  
}

## This function first checks whether the inverse has already been calculated. 
## If that's the case, it returns the inverted matrix and if not, 
## it calculates the inverse and outputs it. 

cacheSolve <- function(x, ...) {
  inverted <- x$getinverse()
  if(!is.null(inverted)) {
    message("Retrieving Cache")
    return(inverted)
  }
  Cache <- x$get()
  inverted <- solve(Cache)
  x$setinverse(inverted)
  inverted
}

