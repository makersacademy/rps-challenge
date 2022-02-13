require 'sinatra/base'
require 'sinatra/reloader' 
require './lib/player'
require './lib/RPS'
require './lib/computer_player'

class RPS < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  helpers do
    def player_1_params?
      !params[:Player1].empty?
    end
  end

  get "/" do
    erb(:index)
  end

  post '/player_choices' do
    redirect('/') unless player_1_params?
    @player1 = Player.new(params[:Player1])
    if params[:Player2].empty?
      @player2 = ComputerPlayer.new
    else
      @player2 = Player.new(params[:Player2])
    end
    session[:Player1] = @player1
    session[:Player2] = @player2
    redirect to('/player_1_choice')
  end

  get '/player_1_choice' do
    @player1 = session[:Player1]
    erb(:matchplayer1)
  end

  post '/choice_player_1' do
    @player1 = session[:Player1]
    @player2 = session[:Player2] 
    @player1.move = params[:player1]
    @player2.computer? ? redirect('/result') : redirect('/player_2_choice') 
  end

  get '/player_2_choice' do
    @player2 = session[:Player2]
    erb(:matchplayer2)
  end

  get '/result' do
    @player1 = session[:Player1]
    @player2 = session[:Player2]
    rps_game = RockPaperScissors.new
    if @player2.computer?
      @player2.move = rps_game.random_move
    else
      @player2.move = params[:player2]
    end
    @result = rps_game.play(@player1.move, @player2.move)
    erb(:result)
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
