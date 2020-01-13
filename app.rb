require 'sinatra/base'
require './lib/game'
require './lib/rules'

class Rps < Sinatra::Base

  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    session[:game] = Game.new.name
    redirect to('/play')
  end

  get '/play' do
    @game = session[:game]
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]
    redirect to('/result')
  end

  get '/result' do 
    @name = session[:name]
    @player_move = session[:move]
    @opponent = Game.new.name
    @computer_move = Game.new.computer_move
    @result = Rules.new.result(@player_move, @computer_move).to_s
    erb :result
  end

  run! if app_file == $0

end
