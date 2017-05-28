require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions
  set :static, true

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player = Player.create(params[:player1_name])
    redirect '/play'
  end

  get '/play' do
    @player1 = Player.instance
    erb(:play)
  end

  get '/result' do
    player1 = Player.instance
    player1.weapon=(params[:weapon])
    computer = Computer.create
    computer.choose_weapon
    @game = Game.create(player1, computer)
    @outcome = @game.battle
    erb(:result)
  end

end
