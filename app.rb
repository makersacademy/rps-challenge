require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/choice' do
    session[:player_1_choice] = params[:player_1_choice]
    redirect '/winner'
  end

  get '/winner' do
    @player_1_name = session[:player_1_name]
    @player_1_choice = session[:player_1_choice]
    erb :winner
  end

  run! if app_file == $0

end
