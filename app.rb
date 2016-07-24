require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:home)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/vs'
  end

  before do
    @game = Game.instance
  end

  get '/vs' do
    # could consider using .player_1 and .player_2 with app method in Game
    @player_1_name = @game.players[0].name
    @player_2_name = @game.players[1].name
    erb(:vs)
  end

  get '/choose_weapon' do
    erb(:choose_weapon)
  end

  post '/weapon' do
    # Sort this out
    @game.players[0].choose(:paper)
    @game.players[1].choose(random_weapon)
    @game.the_winner_is
    redirect '/action'
  end

  get '/action' do
    @player_1_name = @game.players[0].name
    @player_2_name = @game.players[0].name
    erb(:action)
  end

  get '/outcome' do
    erb(:outcome)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
