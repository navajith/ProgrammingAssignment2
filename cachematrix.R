## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<-function(m=matrix()){
  #m<-matrix(x,row,col)
  i<-NULL
  set<-function(y){
    m<<-(y)
    i<<-NULL
  }
  get<-function() m
  setinverse<-function(solve) i<<-solve
  getinverse<-function() i
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve<-function(n=matrix()){
  i<-n$getinverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data<-n$get()
  i<-solve(data)
  n$setinverse(i)
  i
}
