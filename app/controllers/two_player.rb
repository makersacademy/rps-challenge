GAME = Game.new
@ready = true

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

get '/two_player_game' do 
  get_opponent.selection ? @ready = true : @ready = false
  @result = GAME.determine_winner
  erb :two_player
end  

post '/two_player_game' do 
  get_player.selection = params[:choice].to_sym  
  get_opponent.selection ? @ready = true : @ready = false
  @result = GAME.determine_winner
  erb :two_player
end  

get '/go_again' do 
  @result = nil
  get_player.selection = nil
  get_opponent.selection = nil
  @ready = true

  erb :two_player
end  