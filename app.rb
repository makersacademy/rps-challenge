require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
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

  post '/choice' do
    session[:choice] = params[:choice]
    redirect '/results'
  end

  get '/results' do
    @choice = session[:choice]
    erb :results
  end

  run! if app_file == $0
end
