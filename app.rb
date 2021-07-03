require 'sinatra/base'
require_relative './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = Player.new(params[:player_1_name])
    redirect '/game'
  end

  get '/game' do
    @player_1 = session[:player_1]
    erb :game
  end

  post '/attack' do
    @player_1 = session[:player_1]
    @player_1.attack(params[:move])
    redirect '/results'
  end

  get '/results' do
    @game = Game.new(session[:player_1], Computer.new)
    @game.draw? ? (erb :draw) : (@game.win? ? (erb :win) : (erb :lose))
  end

  run! if app_file == $0

end
