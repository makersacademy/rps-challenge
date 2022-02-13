require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1.name
    erb :play
  end

  post '/outcome' do
    $player.choice = params[:choice]
    $result = $game.outcome($player.choice)
    $game.computer_choice
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end