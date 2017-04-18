require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
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

  post '/choice' do
    $game = Game.new(params[:choice])
    @game = $game
    redirect '/outcome'
  end

  get '/outcome' do

    erb :outcome
  end

  run! if app_file == $0
end