require 'sinatra/base'
require './lib/computer'
require './lib/results_calculator'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index 
  end

  post '/multiplayer_game' do
    erb :multiplayer_game
  end

  post '/computer_game' do
    erb :computer_game
  end

  post '/play_eachother' do
    @game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    erb :play_eachother
  end

  post '/play_computer' do
    @player = Player.new(params[:name])
    session[:player] = @player
    erb :play_computer
  end

  post '/results' do
    @player = session[:player]
    @player.choose(params[:choice])
    @results_calc = ResultsCalculator.new(@player, Computer.new.choose)
    @result = @results_calc.result
    erb :results
  end

  run! if app_file == $0
end
