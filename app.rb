require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player_1_name]
    @move = session[:move]
    @opponent_move = session[:opponent_move]
    erb :play
  end

  post '/play' do
    session[:move] = params[:move]
    session[:opponent_move] = :Rock
    redirect '/play'
  end

  run! if app_file == $0

end
