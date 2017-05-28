require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'
require './lib/victory_calculator.rb'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/game' do
    player = Player.new(params[:name])
    computer = Computer.new
    @@game = Game.new(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = @@game
    erb(:play)
  end

  post '/weapon' do
    @game = @@game
    @player_weapon = params[:weapon_choice]
    @game.start(@player_weapon)
    redirect '/weapon'
  end

  get '/weapon' do
    @game = @@game
    erb(:weapon)
  end

  run! if app_file == $0

end
