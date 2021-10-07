
#' Return input
#'
#' Function to return whatever you put in
#'
#' @param x Anything
#'
#' @return What you input
#' @export
#'
#' @examples
#' same(1)
#' same("same")
same = function(x){
  return(x)
}

#' Nothing
#'
#' A function that always returns 0
#'
#' @param x Anything
#'
#' @return zero
#' @export
#'
#' @examples
#' nothing(1000)
#' nothing("nothing")
nothing = function(x){
  return(0)
}

#' No
#'
#' A function that rejects everything
#'
#' @param x Anything
#'
#' @return Wrong input
#' @export
#'
#' @examples
#' no(-20)
#' no("no")
no = function(x){
  print("Wrong input")
}

#' Bad linear model
#'
#' Finds LS solution of parameters for linear model. Much less efficient than lm command, would not recommend using.
#'
#' @param y response variable
#' @param X0 explanatory variable
#'
#' @return fitted parameters
#' @export
#'
#' @examples
bad.lm = function(y,X0){
  d = length(X0[1,])
  X = as.matrix(cbind(rep(1,length(y)),X0))
  solve(t(X) %*% X) %*% t(X) %*% y
}



