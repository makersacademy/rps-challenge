game = Game.new

get '/two_player' do
  player = Player.new 
  session[:player_id] = player.object_id
  erb :two_player
end  

post '/two_player' do
  get_player.name = params[:name]
  game.player1 == nil ? game.player1 = get_player : game.player2 = get_player
  erb :two_player
end 

post '/two_player_game' do 
  get_player.selection = params[:choice].to_sym
  @result = game.determine_winner
  erb :two_player
end  