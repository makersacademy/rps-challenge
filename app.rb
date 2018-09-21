require 'sinatra/base'
require './lib/compy'
require './lib/winner_logic'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/answer' do
    session[:player_choice] = params[:player_choice]
    redirect '/result'
  end

  get '/result' do
    session[:compy] = Compy.new.rand_rps
    @compy = session[:compy]
    session[:winner] = Winner.new
    @winner = session[:winner]
    @player_choice = session[:player_choice]
    erb :result
  end

  run! if app_file == $0

end
