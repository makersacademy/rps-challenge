require 'sinatra/base'
require './lib/computer'
require './lib/game'

class RPSApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/move' do
    @player_name = session[:player_name]
    @player_move = params[:choice]
    @computer_move = Computer.new.move
    @match = Game.new.match(@player_move.to_sym, @computer_move.to_sym)
    erb :move
  end

  run! if app_file == $0
end
