require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/computer'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/' do
    player_1 = Player.new(params[:player_name])
    player_2 = Computer.new
    @game = Game.create(player_1, player_2)
    redirect to '/play'
  end

  get '/play' do
    @player_1 = @game.player_1.name
    erb :play
  end

  post '/play' do
    @game.player_1.make_move(params[:move])
    @game.play
    redirect to '/game_over'
  end

  get '/game_over' do
    erb :game_over
  end

  run! if app_file == $0
end
