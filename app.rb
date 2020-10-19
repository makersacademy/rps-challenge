require 'sinatra/base'
require './lib/game'
require './lib/opponent'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:game] = Game.new
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new
    @name = session[:name]
    @weapon = session[:weapon]
    @opponent_weapon = session[:opponent_weapon]
    # @player = Player.new
    erb :play
  end

  post '/play' do
    @game = Game.new
    session[:weapon] = params[:weapon]
    session[:opponent_weapon] = Opponent.new.turn
    redirect '/play'
  end

  run! if app_file == $0
end