require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/save_name' do
    session[:player_name] = params[:name]
    redirect '/saved_name'
  end

  get '/saved_name' do
    erb :saved_name
  end

  get '/play' do
    erb :play
  end

  post '/rock' do
    session[:player_move] = "Rock"
    redirect '/result'
  end

  post '/paper' do
    session[:player_move] = "Paper"
    redirect '/result'
  end

  post '/scissors' do
    session[:player_move] = "Scissors"
    redirect '/result'
  end

  get '/result' do
    erb :result
  end
end
