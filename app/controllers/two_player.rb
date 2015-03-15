GAME = Game.new

get '/two_player' do

  player = Player.new 
  session[:player_id] = player.object_id

  erb :two_player
end  

post '/two_player' do

  get_player.name = params[:name]    
  GAME.player1 ? GAME.player2 = get_player : GAME.player1 = get_player    

  erb :two_player
end 

post '/two_player_game' do 

  get_player.selection = params[:choice].to_sym
  @opponent_choice = GAME.player2.selection
  @result = GAME.determine_winner

  erb :two_player
end  
