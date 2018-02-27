initialize_board()
n = 1
resign = FALSE
while(!resign){
  b = ""
  w = ""
  if(round((n/2),0) != n/2){
    b = as.character(readline(prompt = "Where do you want to put your black?: "))
    x = as.numeric(unlist(strsplit(b,","))[1])
    y = as.numeric(unlist(strsplit(b,","))[2])
    board[x,y] = 1
  }else if(round((n/2),0) == n/2){
    w = as.character(readline(prompt = "Where do you want to put your white?: "))
    x = as.numeric(unlist(strsplit(w,","))[1])
    y = as.numeric(unlist(strsplit(w,","))[2])
    board[x,y] = 2
  }
  n = n + 1
  if(any(nchar(b) == 6, nchar(w) == 6)){
    resign = TRUE
  }
  updateboard()
}
