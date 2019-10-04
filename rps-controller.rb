require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:playername] = params[:playername]
    redirect '/game'
  end

  get '/game' do
    @playername = session[:playername]
    erb :game
  end

  run! if app_file == $0
end