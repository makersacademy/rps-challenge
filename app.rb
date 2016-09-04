require 'sinatra/base'
require './lib/game'
require './lib/opponent'


class RPS < Sinatra::Base
  enable :sessions
  RPSLS = [:rock, :paper, :scissors, :spock, :lizard]

  private

  def redirect_to_gametype
    if session[:gametype] == 'multi'
        erb :player_1_turn
      else
        erb :single_player_game
      end
  end

  def set_unknown_moves
    @player1 = :unknown
    @player2 = :unknown
  end

  public

  get '/' do
    erb :home
  end

  post '/game' do
    session[:player_name] = params[:player_name]
    session[:gametype] = params[:gametype]
    @player_name = session[:player_name]
    set_unknown_moves
    redirect_to_gametype
  end

  get '/results' do
    @player1 = params[:choice]
    @player2 = Opponent.new(RPSLS).make_choice
    @result = Game.new.play_game(@player1, @player2)
    erb :single_player_game
  end

  get '/player1' do
    session[:player1] = params[:choice]
    set_unknown_moves
    @player1 = session[:player1]
    erb :player_2_turn
  end

  get '/player2' do
    @player1 = session[:player1]
    @player2 = params[:choice]
    @result = Game.new.play_game(@player1, @player2)
    erb :player_1_turn
  end

  get '/new_game' do
    set_unknown_moves
    redirect_to_gametype
  end

  run! if app_file == $0
end
