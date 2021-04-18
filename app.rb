require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  # instance of Game available in every route
  # @game overidden in /player_name, where instance of game is setup
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/player_name' do
    player = Player.new(params['name'])
    @game = Game.create(player)
    redirect '/your_turn'
  end

  get '/your_turn' do
    @player = @game.player
    erb :your_turn
  end

  post '/your_choice' do
    @game.player.play_option = params['play_option']
    @game.computer.play_option = @game.make_random_choice
    redirect '/outcome'
  end

  get '/outcome' do
    @player = @game.player
    @computer = @game.computer
    @game_outcome = @game.outcome
    erb :outcome
  end

  run! if app_file == $0
end
