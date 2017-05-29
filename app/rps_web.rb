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
    @game = Game.new_game(player, computer)
    redirect '/play'
  end

  before do
    @game = Game.start
  end

  get '/play' do
    erb(:play)
  end

  post '/weapon' do
    player_weapon = params[:weapon_choice]
    @game.start(player_weapon)
    redirect '/weapon'
  end

  get '/weapon' do
    erb(:weapon)
  end

  post '/restart' do
    params[:reset_game]
    redirect '/'
  end

  run! if app_file == $0

end
