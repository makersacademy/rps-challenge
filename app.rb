require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    p params
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    p params
    @player_1_name = session[:player_1_name]
    session[:player_1_choice] = params[:player_1_choice]
    erb :play
  end

  post '/resolve' do
    p params
    @player_1_name = session[:player_1_name]
    @player_1_choice = params[:player_1_choice]
    erb :resolve
  end

  run! if app_file == $0
end
