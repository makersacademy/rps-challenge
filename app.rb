require 'sinatra'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    "Let's play Rock, Paper, Scissors!!"
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

run! if app_file == $0
end
