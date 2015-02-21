require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/computer'
require_relative './lib/player'

class RPS < Sinatra::Base
  
  enable :sessions

  game = Game.new
  computer = Computer.new

  get '/' do
    erb :index
  end

  post '/game' do
    name = params[:name]
    if name.empty?
      erb :index
    else
      game.players = []
      @player = Player.new(name)
      game.add_player(computer)
      game.add_player(@player)
      erb :game
    end
  end

  get '/outcome' do
    game.players[1].weapon = params[:weapon].to_sym
    game.players[0].choose_weapon
    @computer_weapon = game.players[0].weapon
    @selected_weapon = game.players[1].weapon
    @player = game.players[1]
    @computer = game.players[0]
    @winner = game.winner
    erb :outcome
  end

  get '/game' do
    @player = game.players[1]
    @computer = game.players[0]
    erb :game
  end

  run! if app_file == $0
end
