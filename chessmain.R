initialize_board = function(){
  board = vector()
  for(i in 1:19){
    board = cbind(board, rep(0,19))
  }
  board <<- as.matrix(board)
}

chessboard = function(){
  windows()
  par(bg = 'chocolate3')
  for(i in 1:19){
    plot(as.matrix(cbind(i,seq(1,19,1))),
         xlim = c(1,19),
         ylim = c(1,19),
         xlab = " ",
         ylab = " ",
         type = "l",
         xaxt = "n",
         yaxt = "n",
         ann = FALSE)
    par(new = TRUE)
  }
  for(i in 1:19){
    plot(as.matrix(cbind(seq(1,19,1),i)),
         xlim = c(1,19),
         ylim = c(1,19),
         xlab = " ",
         ylab = " ",
         type = "l",
         xaxt = "n",
         yaxt = "n",
         ann = FALSE)
    par(new = TRUE)
  }
  points(4,4, pch = 16)
  points(4,10, pch = 16)
  points(4,16, pch = 16)
  points(10,4, pch = 16)
  points(10,10, pch = 16)
  points(10,16, pch = 16)
  points(16,4, pch = 16)
  points(16,10, pch = 16)
  points(16,16, pch = 16)
}
white = function(x,y){
  points(x,y,
         cex = 3,
         pch = 16,
         col = "white")
}
black = function(x,y){
  points(x,y,
         cex = 3,
         pch = 16,
         col = "black")
}

updateboard = function(){
  chessboard()
  for(i in 1:19){
    for(j in 1:19){
      if(board[j,i] == 1){
        black(j,i)
      }else if(board[j,i] == 2){
        white(j,i)
      }
    }
  }
}

