require 'sinatra/base'
require_relative 'game'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  $game = Game.new
  $computer = ComputerPlayer.new

  get '/' do
    erb :index
  end

  post '/start' do
    session[:name] = params[:player_name]
    @user_name = params[:player_name]
    erb :start
  end

  get '/one_player_game' do
    @user_name = session[:name]
    erb :one_player_game
  end

  post '/one_player_game' do
    @player_choice = params['choice'].to_sym
    @computer_choice = $computer.choice
    @result = $game.result(@player_choice, @computer_choice)
    erb :post_game
  end

  get '/two_player_game' do
    "Two Player Game"
  end

  set :views, Proc.new { File.join(root, "..", "views") }
  set :static, true
  # start the server if ruby file executed directly
  run! if app_file == $0
end
