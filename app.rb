require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/throw'

class RPS < Sinatra::Base
  enable :sessions
  
  before do
    @game = Game.instance
  end

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
    erb :play
  end

  post '/play' do
    player_1 = Player.new(@game.player_1.name)
    player_2 = Player.new("RPS Bot")
    @game = Game.create(player_1, player_2)
    @game = Game.instance
    redirect '/play'
  end

  post '/throw' do
    @game.player_1.add(Throw.new(params[:choice])) 
    @game.player_2.add(Throw.new)
    redirect '/throw'
  end

  get '/throw' do
    erb :throw
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
