require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    computer = Computer.new(params[:computer_name])
    @game = Game.create(player, computer)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/rps' do
    player_move = params[:player_move]
    @game.player.select_move(player_move)
    @game.computer.computer_move
    redirect '/end_of_round'
  end

  get '/end_of_round' do
    @game.winner
    @game.declare_winner
    erb :end_of_round 
  end

  post '/new-game' do
    redirect '/play'
  end

end
