require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    @player_name = session[:name]
    erb :game
  end

  post '/choice' do
    session[:playerchoice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player_name = session[:name]
    @player_choice = session[:choice]
    erb :result
  end

  run! if app_file == $0
end
