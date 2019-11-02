require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/choose' do
    @game = $game
    erb :choose
  end

  post '/chosen' do
    @game = $game
    @game.player.weapons(params[:weapon])
    redirect '/chosen'
  end

  get '/chosen' do
    @game = $game
    erb :chosen
  end

  get '/result' do
    @game = $game
    erb :result
  end

  run! if app_file == $0

end
