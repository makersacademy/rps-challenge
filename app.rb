require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

get '/' do
  erb :index
end

post '/name' do
  $player = Player.new(params[:name])
  redirect '/play'
end

get '/play' do
  @name = $player.name
  erb :play
end
# start the server if ruby file executed directly
 run! if app_file == $0
end
