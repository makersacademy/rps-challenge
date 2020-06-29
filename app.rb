require 'sinatra/base'
require './lib/computer'
require './lib/result'

class RPS < Sinatra::Base

  get '/' do
    ":)"
    erb :index
  end

  post '/name' do
    @playerone = (params[:player_one_name])
    erb :start
  end

  post '/game' do
    @playerchoice = (params[:choice])
    @computer = Computer.new.weapon
    p @computer
    @result = Result.new.result(@playerchoice, @computer)
    p @result
    p @playerchoice
    erb :game
  end

  run! if app_file == $0
end