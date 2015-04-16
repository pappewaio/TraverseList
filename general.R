################################################################################
#
#	list with same depth for all levels
#
################################################################################
#example list

lst <- 
  list(
    A=list(
	 a=list(
	  aa=c(1,2,3),
	  bb=c(4,5,6),
	  cc=c(7,8,9)),
	 b=list(
	  dd=c(10,11),
	  ee=c(12))),
	B=list(
	 c=list(
	  ff=c(13,14,15,16),
	  gg=c(17,18,19))))

list.depth <- function(this, thisdepth = 0) {
	  if(!is.list(this)) {
		return(thisdepth)
	  }else {
	    return(list.depth(this[[1]], thisdepth = thisdepth+1))
	  }
}
list.depth(lst)

flat.list.length <- 
	function(this) {
	  if(!is.list(this)) {
		return(length(this))
	  }else {
		return(sum(flat.list.length(do.call(c, unname(this)))))
	  }
}
flat.list.length(lst)



