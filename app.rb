require 'sinatra/base'

class RPSWeb < Sinatra::Base
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
    session[:move] = params[:move]
    redirect '/confirm'
  end

  get '/confirm' do
    @move = session[:move]
    erb :confirm
  end

  run! if app_file == $0
end
