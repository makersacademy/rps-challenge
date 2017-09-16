require 'sinatra'
require_relative 'lib/player.rb'

class RPS < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_name = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name.player_name
    erb :play
  end
  run! if app_file == $0
end
