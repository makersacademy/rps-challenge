require 'sinatra/base'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  # enable :sessions
  # set :session_secret, 'string'

  get '/' do
    erb :registration
  end

  post '/name' do
    $player1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    erb :play
  end

  post '/result' do
    @player1 = $player1.name
    erb :result
  end

  run! if app_file == $0
end
