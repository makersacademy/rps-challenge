require 'sinatra/base'
require './lib/game'
require './lib/opponent'


class RPS < Sinatra::Base
  enable :sessions
  RPSLS = [:rock,:paper,:scissors,:spock,:lizard]

  get '/' do
    erb :home
  end

  post '/game' do
    session[:player_name] = params[:player_name]
    session[:gametype] = params[:gametype]
    @player_name = session[:player_name]
    @player1 = :unknown
    @player2 = :unknown
    if session[:gametype] == 'multi'
      erb :player_1_turn
    else
      erb :single_player_game
    end
  end

  get '/results' do
    @player_name = session[:player_name]
    @player1 = params[:choice]
    @player2 = Opponent.new(RPSLS).make_choice
    @result = Game.new.play_game(@player1, @player2)
    erb :single_player_game
  end

  get '/player1' do
    session[:player1] = params[:choice]
    @player1 = session[:player1]
    @player2 = :unknown
    erb :player_2_turn
  end

  get '/player2' do
    @player_name = session[:player_name]
    @player1 = session[:player1]
    @player2 = params[:choice]
    @result = Game.new.play_game(@player1, @player2)
    erb :player_1_turn
  end

  get '/new_game' do
    @player_name = session[:player_name]
    @player1 = :unknown
    @player2 = :unknown
    if session[:gametype] == 'multi'
      erb :player_1_turn
    else
      erb :single_player_game
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
