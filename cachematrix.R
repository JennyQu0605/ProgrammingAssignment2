## Put comments here that give an overall description of what your
## functions do

## Creates a vector, which containig four functions to:
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse of the matrix
## 4. get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x<- y
                inv <<-NuLL
        }
        get <- function()x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function()inv
        list(get = get ,set= set,getinv = getinv,setinv = setinv)
      

}


## This function solve the matrix if the inverse of the matrix does not exist

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if (!is.null(inv)){
                message("getting cached data")
                return (inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinv(inv)
        inv
        
}



