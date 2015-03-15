helpers do 

  def get_player
    @get_player ||= ObjectSpace._id2ref(session[:player_id]) if session[:player_id]
  end

  def get_opponent
    game.player1 == ObjectSpace._id2ref(session[:player_id]) ? @opponent = game.player2 : @opponent = game.player1
  end  

end  