require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

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
    redirect '/game'
  end

  get '/game' do
    @player_name = session[:player_name]
    @choice = session[:choice]
    erb :game
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
