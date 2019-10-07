def move
  if session[:choice1] == nil
    redirect '/player1'
  elsif session[:choice2] == nil
    redirect '/player2'
  end
end
