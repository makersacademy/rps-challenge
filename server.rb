require 'sinatra/base'
require_relative 'lib/game.rb'

class RPS < Sinatra::Base

  GAME = Game.new 

  enable :sessions
  
  get '/' do
    erb :homepage
  end

  get '/homepage' do
    erb :play_again_page
  end

  post '/game_page' do
    session[:player_one] = params[:player_one]
    session[:tool_one] = params[:tool_one]
    session[:player_two] = params[:player_two]
    session[:tool_two] = params[:tool_two]
    
    # @player_two = "Computer"
    # @tool_two = [:Rock, :Paper, :Scissors].sample

    GAME.add_player_one "Nadav" # ession[:player_one] 
    GAME.add_player_two "Line" # session[:player_two] 
    GAME.choose_tool GAME.player_one, :Rock # session[:tool_one].to_sym
    GAME.choose_tool GAME.player_two, :Paper # session[:tool_two]
    # @result = GAME.play
    erb :game_page 
  end

  post '/results_page' do
    session[:result] = GAME.play
    erb :results_page
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
