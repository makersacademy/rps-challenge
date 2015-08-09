require 'sinatra/base'
require_relative 'game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  $game = Game.new
  $computer = ComputerPlayer.new
  $players = []

  get '/' do
    erb :index
  end

  post '/start' do
    session[:name] = params[:player_name]
    @user_name = session[:name]
    $players << session[:session_id]
    erb :start
  end

  get '/one_player_game' do
    @user_name = session[:name]
    erb :game_play
  end

  post '/one_player_game' do
    @player_choice = params['choice'].to_sym
    @computer_choice = $computer.choice
    @result = $game.result(@player_choice, @computer_choice)
    erb :post_game
  end

  get '/two_player_game' do
    @user_name = session[:name]
    erb :multi_game_play
  end

  post '/two_player_game' do
    @player1 = $players[0]
    @player2 = $players[1]
    @player1_choice = params['choice'].to_sym
    @player2_choice = params['choice'].to_sym
    #if session[:session_id] == $players[0]

  end

  get '/pending' do
    redirect '/two_player_game' if $players.count == 2
    erb :pending
  end

  set :views, Proc.new { File.join(root, "..", "views") }
  set :static, true
  # start the server if ruby file executed directly
  run! if app_file == $0
end
