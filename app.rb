require 'sinatra/base'
require './lib/computer'

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
    @computer = Computer.new
    @playerchoice = (params[:choice])
    erb :game
   end

  post './game' do
    erb :game
  end

  run! if app_file == $0
end