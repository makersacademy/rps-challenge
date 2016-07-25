require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/weapon'

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
    erb(:vs)
  end

  get '/choose_weapon' do
    erb(:choose_weapon)
  end

  post '/weapon' do
    @game.player_1.choose(params[:player_1_weapon].to_sym)
    @game.player_2.choose(@game.random_weapon)
    @game.the_winner_is
    redirect '/action'
  end

  get '/action' do
    erb(:action)
  end

  get '/outcome' do
    erb(:outcome)
  end

  run! if app_file == $0
end
