require 'sinatra/base'
require './lib/game'
require './lib/opponent'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home
  end

  post '/game' do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb :game
  end

  get '/results' do
    @player_name = session[:player_name]
    @user_choice = params[:choice]
    @computer_choice = Opponent.new([:rock,:paper,:scissors]).make_choice
    @winner = Game.new.play_game(@user_choice, @computer_choice)
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
