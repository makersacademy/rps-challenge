require 'sinatra/base'
require './lib/computer'
require './lib/result'

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
    @result = Result.new
    erb :game
   end

  post './game' do
    erb :game
  end

  run! if app_file == $0
end