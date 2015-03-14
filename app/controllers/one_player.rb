get '/one_player' do

  erb :one_player
end  

post '/one_player' do

  player = Player.new 
  session[:player_id] = player.object_id
  
  get_player.name = params[:name]

  erb :one_player
end 