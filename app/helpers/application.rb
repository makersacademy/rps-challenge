helpers do 

  def get_player
    GAME.player1.object_id == session[:player_id] ? GAME.player1 : GAME.player2 
  end

  def get_opponent
    @opponent ||= analyse_game
  end  

  def analyse_game
    get_player == GAME.player1 ? GAME.player2 : GAME.player1
  end  

end  