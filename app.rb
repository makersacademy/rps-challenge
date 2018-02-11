require 'sinatra/base'
require './lib/computer'
require './lib/game'
require './lib/player'

class RpsGame < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    $game = Game.new(player)
    redirect('play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/weapon' do
    $game.player.weapon = params[:weapon]
    redirect('/result')
  end

  get '/result' do
    @game = $game
    @game.computer.choose_weapon
    erb(:result)
  end

  get '/thanks' do
    @game = $game
    erb(:thanks)
  end

end
