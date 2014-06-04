## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## similar to example
makeCacheMatrix <- function(x = matrix()) {
    x_inv<-NULL;
    set<-function(y) {
        x<<-y;
        x_inv<<-NULL;
    }
    get<-function() {
        x
    }
    set_inv<-function(inv) {
        x_inv<<-inv;
    }
    get_inv<-function(inv) {
        x_inv;
    }
    list(set=set,get=get,
         set_inv=set_inv,
         get_inv=get_inv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    x_inv<-x$get_inv();
    if (!is.null(x_inv)) {
        message("getting cached inverse of input matrix");
        return(x_inv);
    }
    tmp<-x$get();
    tmp_inv<-solve(tmp);
    x$set_inv(tmp_inv)
    x_inv
}
