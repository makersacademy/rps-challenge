game = Game.new
@ready = true

get '/one_player' do

  player = Player.new 
  session[:player_id] = player.object_id

  erb :one_player
end  

post '/one_player' do
    
  computer = Computer.new
  game.player1 = get_player
  game.player2 = computer  
  get_player.name = params[:name]

  erb :one_player
end 

post '/one_player_game' do 

  get_player.selection = params[:choice].to_sym
  @computer_choice = game.player2.get_selection
  @result = game.determine_winner

  erb :one_player
end  