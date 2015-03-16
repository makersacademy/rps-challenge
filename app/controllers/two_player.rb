GAME = Game.new
@ready = true
@result = nil

get '/two_player' do
  player = Player.new 
  GAME.player1 ? GAME.player2 = player : GAME.player1 = player 
  session[:player_id] = player.object_id
  erb :two_player
end  

post '/two_player' do
  get_player.name = params[:name]        
  erb :two_player
end 

get '/two_player_game' do 
  if get_opponent  
    get_opponent.selection && get_player.selection ? @ready = true : @ready = false
    @result = GAME.determine_winner
  else
    @ready = false
  end  

  erb :two_player
end  

post '/two_player_game' do 
  get_player.selection = params[:choice].to_sym  
  if get_opponent
 get_opponent.selection && get_player.selection ? @ready = true : @ready = false
    @result = GAME.determine_winner
  else 
    @ready = false
  end  
  erb :two_player
end  

get '/go_again' do 
  if @result then @result = nil end
  if get_player.selection then get_player.selection = nil end
  if get_opponent.selection then get_opponent.selection = nil end
  @ready = true

  erb :two_player
end  