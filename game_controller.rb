require 'sinatra/base'
require './lib/game'

class GameController < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    multiplayer = params[:computer]
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/selection' do
    selection = params[:selection]
    @game.player_1_select(selection)
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
