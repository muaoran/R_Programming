makeCacheMatrix <- function(x = matrix()){
 inv_matrix<-NULL
set<-function(y){ x<<-y
 inv_matrix<<-NULL
}
get<-function()x
setInverse<-function(inverse)inv_matrix<<-inverse
 getInverse<-function()inv_matrix
list(set=set,
get=get, setInverse=setInverse,getInverse=getInverse)}


cacheSolve <- function(x, ...) {
 inv_matrix<-x$getInverse()
 if(!is.null(inv_matrix)){
message("getting cached data")
return(inv_matrix)}
mat<-x$get()
 inv<-solve(mat, ...)
 x$setInverse(inv)
 inv }
