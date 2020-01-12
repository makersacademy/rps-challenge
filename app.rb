require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
    @opponent = Game.new.name
    erb :play
  end

  post '/result' do 
    @name = session[:name]
    session[:move] = params[:move]
    @opponent = Game.new.name
    @computer_move = Game.new.computer_move
    erb :result
  end

  run! if app_file == $0

end
