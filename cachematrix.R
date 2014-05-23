## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<-function (x=matrix())
{
 	## set the value of matrix
 
 	inverse<-NULL
 
 
 	set<-function(y)
 	{
 		x<<- y
 		inverse<<- NULL
 	}
 
 	## Get value of matrix
 
 	get<- function()x
  
 	## Set inverse matrix
 
 	set.inverse<- function(solve) inverse<<-solve
 	get.inverse<- function() inverse
 
 	
 	## Get the inverse of matrix
 
 
 	list(
   		set=set,
   		get=get,
   		set.inverse=set.inverse,
   		get.inverse=get.inverse)
}

cacheSolve<-function(x, ...)
{
 	## Return inverse matrix of x
 	## Get the inverse matrix
 	inverse<-x$get.inverse()
 	if(!is.null(inverse))
 	{
 		message("Getting the cached inverse data")
 		return(inverse)
 	}
 	##if not : get the inverse 
 	{
 	 data<-x$get()
 	 inverse<-solve(data, ...)
 	## Set inverse of the matrix
 	 x$setinverse(inverse)
 	 inverse
}
