## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(a = matrix()) {
        ## "m" will store inverse of matrix, initialize it to NULL in first step
        m <<- NULL
        
        ## set the value of the matrix
        setm <<- function(b) {
                a <<- b
                m <<- NULL
        }
        
        ## get the value of the matrix
        get <- function() a
        
        ## set the value of the inverse of matrix
        setinversem <- function(inverse) m <<- inverse
        
        # get the value of the inverse of matrix
        getinversem <- function() m
        
        
        list(setm = setm, get = get,
             setinversem = setinversem,
             getinversem = getinversem)
}


## Write a short comment describing this function

cacheSolve <- function(a, ...) {
        ## Return a matrix that is the inverse of 'a'
		        ## "i" will store inverse of matrix, load the "i" by get,inverse() function
        i <- a$getinversem()
        
        ## checks to see if the inverse has already been calculated
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        
        ## get the data of the matrix and calculate the inverse of the matrix
        data <- a$get()
        i <- solve(data)
        
        ## set the inverse of the matrix by setinverse() function
        a$setinversem(i)
        
        ##return "i"
        i

}
