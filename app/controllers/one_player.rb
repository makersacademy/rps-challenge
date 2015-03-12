get '/one_player' do

  erb :one_player
end  

post '/one_player' do

  current_player.name = params[:name]
 
  current_player.make_selection = params[:selection].to_sym
  @game = OnePlayerGame.new
  @computer = Computer.new
  @game.computer = @computer
  @game.player = get_player
  @computer_choice = @computer.make_selection
  @result = @game.determine_winner     

  erb :one_player
end 