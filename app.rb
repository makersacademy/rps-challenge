require 'sinatra/base'
require_relative 'lib/player'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/named-player' do
  $player_1 = Player.new(params[:player1])
  redirect '/play'
end

get '/play' do
  @player1 = $player_1.name
  erb :player
end

run! if app_file == $0


end
