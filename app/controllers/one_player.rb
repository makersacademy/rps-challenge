get '/one_player' do

  player = Player.new 
  session[:player_id] = player.object_id

  erb :one_player
end  

post '/one_player' do
  
  get_player.name = params[:name]
  
  if get_player.name
    @game = Game.new
  end  

  erb :one_player
end 