same = function(x){
  return(x)
}

nothing = function(x){
  return(0)
}

no = function(x){
  print("Wrong input")
}

bad.lm = function(y,X0){
  d = length(X0[1,])
  X = as.matrix(cbind(rep(1,length(y)),X0))
  solve(t(X) %*% X) %*% t(X) %*% y
}



