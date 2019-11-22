require 'sinatra/base'
require './lib/player'

class Rockpaperscissors < Sinatra::Base
  # get '/' do
  #   'Testing infrastructure working!'
  # end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/result' do
    @player = $player
    erb :result
  end

  run! if app_file == $0
end
