require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps_app < Sinatra::Base

  enable :sessions

  # before do
  #   @game = Game.instance
  # end

  get '/test' do
    "testing"
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(Player.new(params[:player_name]), params[:game_type])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/result' do
    @game = Game.instance
    @game.run_game(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    erb :result
  end

end
