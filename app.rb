require 'sinatra'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @name = Player.new(params[:name])
    $game = Game.new(@name)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/play' do
    $game.outcome = []
    erb(:play)
  end

  post '/game' do
    $game.selection = params[:selection]
    $game.player_selection
    $game.computer_choice
    erb(:results)
  end

end
