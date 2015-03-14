get '/' do
  
  session.clear
  player = Player.new 
  session[:player_id] = player.object_id

  erb :index
end  

post '/' do
  
  player = params[:no_of_players].to_i
  
  redirect to '/one_player' if player == 1
  redirect to '/two_player' if player == 2 

  erb :index
end  