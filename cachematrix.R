## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##setMartrix set new value to the variable X,
##getMatrix return value from inv variable,
##getInverse, controll if inv is't null and return value,else invers value x and cash it in inv variable and return it
## return list of matrix functions
makeCacheMatrix <- function(x = matrix()) {
  
    inv <- NULL
    
        setMatrix <- function(newValue) {
           x <<- newValue
           inv <<- NULL
        }
    
            getMatrix <- function() {
                inv
            }
   
                getInverse <- function(){
                    if (!is.null(inv)){
                      message("Отримання кешованої оберненої матриці.")
                          return(inv)
                        }else{
                            message("Обчислення оберненої матриці.")
                                inv<-solve(x)
                                 return(inv)
                         }
                 }
    
    list(setMatrix = setMatrix, getMatrix = getMatrix, getInverse = getInverse)
  
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       if(!is.function(x$getInverse)){
          stop("it must be matrix created by function makeCacheMatrix")
        }
          
        inv<- x$getInverse()
        inv
        ## Return a matrix that is the inverse of 'x'
}
