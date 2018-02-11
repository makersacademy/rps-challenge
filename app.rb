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
    $player = Player.new(params[:name])
    redirect('play')
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  post '/weapon' do
    $player.weapon = params[:weapon]
    redirect('/result')
  end

  get '/result' do
    @player = $player
    @computer = Computer.new
    @computer.choose_weapon
    @game = Game.new
    erb(:result)
  end

  get '/thanks' do
    @player = $player
    erb(:thanks)
  end

end
