require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    # "Testing infrastructure working!"
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  post '/result' do
    @player_choice = params[:player_choice]
    erb :result
  end

  run! if app_file == $0
end
