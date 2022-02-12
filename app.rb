require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb :start
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/result' do
    session[:choice] = params[:choice]
    redirect '/winner'
  end

  get '/winner' do
    @player_name = session[:player_name]
    @choice = session[:choice]
    erb :winner
  end

  run! if app_file == $0
end
