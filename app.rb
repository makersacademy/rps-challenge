require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:game] = Game.new(Player.new(params[:player1_name]),Player.new(params[:player2_name]))
    redirect '/play'
  end

  post '/player1_choice' do
    session[:game].player1.choice = params[:player1_choice]
    redirect '/play'
  end

  post '/player2_choice' do
    session[:game].player2.choice = params[:player2_choice]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:game].player1.name
    @player2_name = session[:game].player2.name
    @player1_choice = session[:game].player1.choice
    @player2_choice = session[:game].player2.choice
    erb :play
  end

  run! if app_file == $0
end
