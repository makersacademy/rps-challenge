require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb (:index)
  end

  get '/form' do
    @players = params[:players]
    erb(:details)
  end

  post '/create' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb (:play)
  end

  get '/result' do
    @p1 = params[:player1]
    @p2 = params[:player2] || @game.random
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end