require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/weapons'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1, Weapons.new)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/rock' do
    $game.attack(:rock)
    @game = $game
    redirect 'result'
  end

  post '/paper' do
    $game.attack(:paper)
    @game = $game
    redirect 'result'
  end

  post '/scissors' do
    $game.attack(:scissors)
    @game = $game
    redirect 'result'
  end

  get '/result' do
    @game = $game
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
