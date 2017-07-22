require 'sinatra/base'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    session[:player_name]
    redirect '/game'
  end

  get '/game' do
    @name = session[:player_name]
    erb :game
  end

  post '/play' do
    session[:choice] = params[:choice]
    redirect '/play'
  end

  get '/play' do
    @computer = Computer.new
    @comp_choice = @computer.choose
    @choice = session[:choice]
    erb :play
  end

  get '/css/style.css' do
    scss :styles
  end
end
