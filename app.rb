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

  get '/result' do
    erb :result
  end

  post '/result' do
    session[:player_move] = params[:move]
    redirect '/result'
  end
end
