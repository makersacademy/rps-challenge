require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/game'
  end

  get '/game' do
    @player_name = session[:player_name]
    erb :game
  end

  post '/choice' do
    @player_selection = params[:player_selection]
    erb :choice
  end

  post '/result' do
    @computer_selection = ['rock', 'paper', 'scissors'].sample
    erb :result
  end

  run! if app_file == $0
end
