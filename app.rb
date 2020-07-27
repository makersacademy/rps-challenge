require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/throw'


class RPS < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new("RPS Bot")
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/play' do
    @game = Game.instance
    player_1 = Player.new(@game.player_1.name)
    player_2 = Player.new("RPS Bot")
    @game = Game.create(player_1, player_2)
    @game = Game.instance
    redirect '/play'
  end

  post '/throw' do
    @game = Game.instance
    @game.player_1.add(Throw.new(params[:choice])) 
    @game.player_2.add(Throw.new)
    redirect '/throw'
  end

  get '/throw' do
    @game = Game.instance
    erb :throw
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
