require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/register' do
    $player1 = Player.new(params["player_name"])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    erb :play
  end

  post '/attack' do
    $attack = params["attack"]
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
