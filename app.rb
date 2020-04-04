require 'sinatra/base'
require './lib/game'

class RockPaperScissor < Sinatra::Base 
  enable :sessions

  get '/' do
    erb :index
  end

  post '/start' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end
  
  get '/play' do 
    @player_name = session[:player_name]
    erb :welcome_player
  end

  post '/game' do
    session[:store_players_move] = params[:move]
    session[:store_computer_move] = ["Rock", "Paper", "Scissors"].sample
    redirect '/results'
  end

  get '/results' do
    @player_name = session[:player_name]
    @players_move = session[:store_players_move]
    @computer_move = session[:store_computer_move]
    @run_game = Game.new(@players_move, @computer_move)

    if @players_move == @computer_move
      erb :draw
    else
      @winning_move = @run_game.get_winning_move
      if @winning_move == @players_move
        @the_winner = @player_name
      else
        @the_winner = "Computer"
      end
      erb :who_wins
    end
  end

  run! if app_file == $0
end
