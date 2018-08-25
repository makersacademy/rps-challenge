require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $game
    erb(:play)
  end

  post '/player_choice' do
    $player_weapon = params[:weapon]
    redirect '/cpu'
  end

  get '/cpu' do
    @player = $game
    @player_weapon = $player_weapon
    erb(:cpu)
  end

  get '/result' do
    @game_weapon = $game.computer_weapon
    @player_weapon = $player_weapon
    @player = $game
    erb(:result)
  end

  run! if app_file == $0
end
