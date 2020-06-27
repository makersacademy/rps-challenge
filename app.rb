require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    ":)"
    erb :index
  end

  post '/name' do
    @playerone = (params[:player_one_name])
    erb :start
  end

   get '/name' do
    @playerchoice = (params[:choice])
    erb :game
   end

  post './game' do
    #@playerchoice = (params[:choice])
    erb :game
  end

  run! if app_file == $0
end