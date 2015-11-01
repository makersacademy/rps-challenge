require 'sinatra/base'

class Rps < Sinatra::Base

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
    @player_choice = session[:player_choice]
    erb :play
  end

  get '/choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/play'
  end

  run! if app_file == $0
end
