require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  before do
    @game = Game.instance
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new("COMPUTER")
    @game = Game.create(player_1, player_2)
    redirect "/play"
  end

  get '/play' do
    @game
    erb :play
  end

  post '/outcome' do
    @game
    @game.player_1.move = params[:player_1_move]
    @game.player_2.random_move
    erb :outcome
  end

  run! if app_file == $0

end
