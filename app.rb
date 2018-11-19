require 'sinatra/base'
require './lib/game_model.rb'

class RPS < Sinatra::Base
  enable :sessions
  game = Game.new

  get '/' do
    erb(:index)
  end

  get '/register' do
    erb(:register)
  end

  post '/name' do
    session[:player1] = params[:player1]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    erb(:play)
  end

  post '/chosen' do
    puts params
    session[:selection] = params[:button]
    redirect '/result'
  end

  get '/result' do
    @selection = session[:selection]
    @computer_move = game.computer_move
    @winner = game.who_wins(@selection, @computer_move)
    erb(:result)
  end


  run! if app_file == $0
end
