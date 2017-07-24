require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name_intro' do
    $player_name = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name
    erb :play
  end

  post '/log' do
    $current_choice = params[:Rock] || params[:Paper] || params[:Scissors]
    redirect '/showdown'
  end

  get '/showdown' do
    @player_name = $player_name
    @current_choice = $current_choice
    @winner = $winner
    erb :showdown
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
