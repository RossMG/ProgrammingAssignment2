## Put comments here that give an overall description of what your
## functions do

## This function:
## 1: sets the value of the matrix
## 2: gets the value of the matrix
## 3: sets the inverse value of the matrix
## 4: gets the inverse value of the matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(
                set = set, 
                get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
## checks if the inverse is available if so returns inverse and skips computation
##else, it calculates the inverse and sets value in cache

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
        ## Return a matrix that is the inverse of 'x'
}
