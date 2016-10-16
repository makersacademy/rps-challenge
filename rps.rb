require 'sinatra/base'
require './lib/player.rb'

class RPS < Sinatra::Base

 enable :sessions

get '/' do
  erb :home
end

post '/names' do
  $player = Player.new(params[:player_name])
  redirect '/game'
end

get '/game' do
  @player = $player.name
  erb :game
end

#start the server if ruby file executed directly
run! if app_file == $0
end
