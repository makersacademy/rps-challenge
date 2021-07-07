require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'
require './helpers/game_result'

class RPSWeb < Sinatra::Base
  helpers GameResult
  enable :sessions

  get "/" do
    erb(:select_mode)
  end

  get "/register" do
    @play_mode = params[:play_mode]
    session[:play_mode] = @play_mode

    if @play_mode == "solo"
      erb(:solo_details)
    else
      erb(:multi_details)
    end

  end

  post "/register" do

    @play_mode = session[:play_mode]

    @game = Game.create

    @player1 = Player.new(params[:player1])

    if @play_mode == "solo"
      @player2 = Computer.new
    else
      @player2 = Player.new(params[:player2])
    end

    session[:play_mode] = @play_mode
    session[:player1] = @player1
    session[:player2] = @player2

    redirect "/play"

  end

  get "/play" do
    @play_mode = session[:play_mode]
    @player1 = session[:player1]
    @player2 = session[:player2]

    @winning_message = ""
    @input_missing_message = ""

    session[:play_mode] = @play_mode
    session[:player1] = @player1
    session[:player2] = @player2

    display_game_result_and_play_again

  end

  post "/play" do
    @play_mode = session[:play_mode]
    @player1 = session[:player1]
    @player2 = session[:player2]

    play_game

    session[:play_mode] = @play_mode
    session[:player1] = @player1
    session[:player2] = @player2

    display_game_result_and_play_again

  end

  run! if app_file == $0
end
