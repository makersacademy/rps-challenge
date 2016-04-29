require 'sinatra/base'
require './lib/player'
require './lib/game'

class RpsChallenge < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  get '/form' do
    @mode = params[:mode]
    erb :form
  end

  post '/names' do
    player1 = Player.new(name: params[:player_1_name])
    player2 = Player.new(name: params[:player_2_name])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
