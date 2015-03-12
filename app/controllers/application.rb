get '/' do
  
  session.clear
  player = Player.new 
  session[:player_id] = player.object_id

  redirect to '/one_player' if params[:no_of_players] === 1
  redirect to '/two_player' if params[:no_of_players] === 2

  erb :index
end  