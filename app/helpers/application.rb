helpers do 

  def get_player
    @get_player ||= ObjectSpace._id2ref(session[:player_id]) if session[:player_id]
  end

  def get_opponent
    @opponent ||= analyse_game
  end  

  def analyse_game
    get_player == GAME.player1 ? GAME.player2 : GAME.player1
  end  

end  