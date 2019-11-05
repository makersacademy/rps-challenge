require 'sinatra/base'
require_relative './lib/game.rb'

class Rps < Sinatra::Base
  enable :sessions
  set :session_secret, 'super super secret'

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
    session[:move] = params[:move]
    redirect '/play_2'
  end

  get '/play_2' do
    @player_1 = session[:player_1]
    # session[:move] = params[:move]
    @move = session[:move]
    @random = @game.randomizer
    @winner = @game.winner(@move, @random)
    erb :play_2
  end

  run! if app_file == $0
end
