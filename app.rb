require 'sinatra/base'
require 'sinatra/reloader'

class RPSgame < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:playername] = params[:playername]
    @playername = session[:playername]
    erb :game
  end

  post '/playermove' do
    @playername = session[:playername]
    session[:playermove] = params[:playermove]
    @playermove = session[:playermove]
    p @playermove
    erb :results
  end

  run! if app_file == $0
end
