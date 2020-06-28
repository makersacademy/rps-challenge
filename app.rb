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
 
  post '/game' do
    @computer = Computer.new
    @result = Result.new
    @playerchoice = (params[:choice])
    erb :game
  end

  get '/game' do
    #@computer = Computer.new.weapon
    #@result = Result.new
    erb :game
  end

  run! if app_file == $0
end