require 'sinatra'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/welcome' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  run! if app_file == $0
end
