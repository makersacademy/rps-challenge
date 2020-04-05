require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    "Welcome to Rock Paper Scissors!"
    erb :index
  end

  post '/enter_name' do
    session[:player_name] = params[:enter_name]
    redirect './start_game'
  end

  get '/start_game' do
    @player_name = session[:player_name]
    erb :start_game
  end

  post '/choose_play' do
    session[:selected_play] = params[:rock_paper_scissor]
    redirect './results'
  end

  get '/results' do
    @selected_play = session[:selected_play]
    game = Game.new(@selected_play)
    @computer_hand = game.computer_turn
    @result = game.decide_winner
    erb :results
  end

=begin
  post './restart_game' do
    redirect '/'
  end
=end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
