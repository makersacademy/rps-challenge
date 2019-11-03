require 'sinatra/base'
require_relative './lib/game.rb'

class Rps < Sinatra::Base
  enable :sessions
  
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    session[:move] = params[:move]
    erb :play
  end

  post '/move' do
    @player_1 = session[:player_1]
    @game = Game.create
    @playing = true
    session[:move] = params[:move]
    @move = session[:move]
    @random = @game.randomizer
    @winner = @game.winner(@move, @random)
    erb :play
  end

  run! if app_file == $0
end
