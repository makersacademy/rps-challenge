helpers do 

  def get_player
    @get_player ||= ObjectSpace._id2ref(session[:player_id]) if session[:player_id]
  end
    
end  