## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 invmat <-NULL
  set<-function(mat1){
    mat<<-mat1
    invmat<<-null
  }
  get<-function(){
    mat
  }
  setinv<-function(matinv){
    invmat<<-matinv
  }
  getinv<-function(){
    invmat
  }
  list(set = set, get=get, setinv=setinv, getinv=getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        mat1<- x$getinv()      ##get matrix invers if alrady their
  if( !is.null(mat1)){
    message("getein from cache")
    return(mat1)   ## Return a matrix that is the inverse of 'x'
  }
  
  mat1 = x$get()
  matinv = solve(mat1) #getting inverse of matrix
  x$setinv(matinv)
}
