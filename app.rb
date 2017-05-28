require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions
  set :static, true

  before do
    @player1 = Player.instance
  end

  get '/' do
    erb(:index)
  end

  post '/register' do
    @player2 = params[:mode_2]
    erb(:register)
  end

  post '/names' do
    @player1 = Player.create(params[:player1_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/result' do
    @game = Game.create(@player1, Computer.new)
    @game.players[0].weapon=(params[:weapon])
    @game.players[1].choose_weapon
    erb(:result)
  end

end
