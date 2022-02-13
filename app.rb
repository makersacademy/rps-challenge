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

  get "/" do
    erb(:index)
  end

  post '/match' do
    @player1 = Player.new(params[:Player1])
    if params[:Player2].empty?
      @player2 = ComputerPlayer.new
    else
      @player2 = Player.new(params[:Player2])
    end
    session[:Player1] = @player1
    session[:Player2] = @player2
    p @player1
    p @player2 
    p @player2.computer?
    p "redirect to show page now"
    redirect to('/match')
  end

  get '/match' do
    @player1 = session[:Player1]
    @player2 = session[:Player2]
    erb(:match)
  end

  post '/result' do
    @player1 = session[:Player1]
    @player2 = session[:Player2]
    rps_game = RockPaperScissors.new
    @player_move = params[:player1]
    @computer_move = rps_game.random_move
    @result = rps_game.play(@player_move, @computer_move)
    if @result == "win"
      @player1.pointswon
      p @player1.points
    end    
    erb(:result)
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
