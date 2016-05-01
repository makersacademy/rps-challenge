require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  get '/name_2' do
    erb :name_2
  end

  post '/set_name' do
    @player_1 = Player.new params[:player_1_name]
    @game = Game.create(@player_1)
    redirect '/play'
  end

  post '/set_name_2' do
    @player_1 = Player.new params[:player_1_name]
    @player_2 = Player.new params[:player_2_name]
    @game = Game.create(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.object
    erb :play
  end

  post '/player_move' do
    @game = Game.object
    @game.player_1.choose_move params[:attack]
    @game.player_2.choose_move
    redirect '/result'
  end

  get '/result' do
    @game = Game.object
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
