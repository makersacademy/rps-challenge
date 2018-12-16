require 'sinatra/base'

class Game  < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/game'
  end

  get '/game' do
    @player = session[:player]
    @player_choice = session[:player_choice]
    erb :game
  end

  run! if app_file == $0

end
