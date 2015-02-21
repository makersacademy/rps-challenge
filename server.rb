require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/computer'
require_relative './lib/player'

class RPS < Sinatra::Base
  
  enable :sessions

  game = Game.new
  computer = Computer.new
  game.add_player(computer)

  get '/' do
    erb :index
  end

  post '/game' do
    name = params[:name]
    if name.empty?
      erb :index
    else
      @player = Player.new(name)
      game.add_player(@player)
      erb :game
    end
  end

  get '/outcome' do
    game.players[1].weapon = params[:weapon].to_sym
    @selected_weapon = game.players[1].weapon
    game.players[0].choose_weapon
    @player = game.players[1]
    @computer = game.players[0]
    @winner = game.winner
    @computer_weapon = game.players[0].weapon
    erb :outcome
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
