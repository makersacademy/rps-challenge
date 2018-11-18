require 'sinatra'

get '/' do
  erb :index
end

post '/results' do
  $player_1 = Player.new(params[:player1])
  $the_move = Player.new(params[:move])
  redirect '/play'
end

get '/play' do
  @player1 = $player_1
  @move = $the_move
  erb :play
end
