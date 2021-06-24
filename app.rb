require 'sinatra'
require 'sinatra/reloader'
require './lib/computer'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new
    @player_name = session[:player_name]
    @choice = session[:choice]
    @computer_choice = session[:computer_choice]
    erb :play
  end

  post '/play' do
    session[:choice] = params[:choice]
    session[:computer_choice] = Computer.new.computer_choice
    redirect '/play'
  end

  run! if app_file == $0
end
