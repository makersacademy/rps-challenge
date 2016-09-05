require 'sinatra/base'
require_relative 'lib/game.rb'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    # player1 = Player.new(params[:player1])
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player1_choice = session[:player1_choice]
    @computer_choice = session[:computer_choice]
    erb(:play)
  end

  post '/play' do
    session[:player1_choice] = params[:player1_choice]
    session[:computer_choice] = Game.new.random_choice
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
