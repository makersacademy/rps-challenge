require 'sinatra/base'
require_relative 'lib/game'

class RPS < Sinatra::Base
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

  get '/game' do
    @player_name = session[:player_name]
    @player_choice = params[:option]


    @computer_choice = ['rock', 'paper', 'scissors', 'spock', 'lizard'].sample

    @winner = Game.new(@player_choice, @computer_choice, @player_name).rpssl

    erb :game
  end

  run! if app_file == $0
end
