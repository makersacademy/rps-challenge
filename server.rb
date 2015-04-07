require 'sinatra/base'
require_relative 'lib/game.rb'

class RPS < Sinatra::Base
  
  get '/' do
    erb :homepage
  end

  get '/homepage' do
    erb :play_again_page
  end

  post '/game_page' do
    @player_one = params[:name]
    @tool_one = params[:tool]
    @player_two = "Computer"
    @tool_two = [:Rock, :Paper, :Scissors, :Lizard, :Spoke].sample
    game = Game.new @player_one, @player_two 
    game.choose_tool game.player_one, @tool_one.to_sym
    game.choose_tool game.player_two, @tool_two
    @result = game.play
    erb :game_page 
  end

  post '/results_page' do
    @player_one = params[:name]
    erb :results_page
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
