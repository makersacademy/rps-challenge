require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/register' do
    session[:marketeer_name] = params[:marketeer_name]
    redirect '/play'
  end

  get '/play' do
    @marketeer_name = session[:marketeer_name]
    erb :play
  end

run! if app_file == $0
end
