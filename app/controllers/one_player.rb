GAME = Game.new
@ready = true

get '/one_player' do

  player = Player.new 
  GAME.player1 = player  
  session[:player_id] = player.object_id

  erb :one_player
end  

post '/one_player' do
    
  computer = Computer.new
  GAME.player2 = computer  
  get_player.name = params[:name]

  erb :one_player
end 

post '/one_player_game' do 

  get_player.selection = params[:choice].to_sym
  @computer_choice = GAME.player2.get_selection
  @result = GAME.determine_winner

  erb :one_player
end  