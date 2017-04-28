require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/computer'

class RPS < Sinatra::Application

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $current_player = Player.new(params[:name])
    redirect to('/play')
  end

  get '/play' do
    @name = $current_player.name
    erb :play
  end

  post '/game' do
    $current_player.weapon = params[:weapon]
    computer = Computer.new
    $game = Game.new(params[:weapon].to_sym, computer.weapon)
    redirect to('/result')
  end

  get '/result' do
    @game = $game
    erb @game.result
  end

end
