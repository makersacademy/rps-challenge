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

  post '/enter_player_names' do
    @game = Game.create(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect to '/play_eachother'
  end

  get '/play_eachother' do
    @game = Game.instance
    erb :play_eachother
  end

  post '/calculate_multiplayer_results' do
    @game = Game.instance
    @game.current_turn.choose(params[:choice])
    if @game.player_2.move.nil?
      @game.switch_turns
      redirect to '/play_eachother'
    else 
      redirect to '/multiplayer_results'
    end
  end

  get '/multiplayer_results' do
    @game = Game.instance
    @results_calc = ResultsCalculator.new(@game.player_1, @game.player_2)
    @result = @results_calc.result
    erb :multiplayer_results
  end

  post '/computer_game' do
    erb :computer_game
  end

  post '/enter_name' do
    @game = Game.create(Player.new(params[:name]), Computer.new)
    redirect to 'play_computer'
  end

  get '/play_computer' do
    @game = Game.instance
    erb :play_computer
  end

  post '/calculate_results' do
    @game = Game.instance
    @game.player_1.choose(params[:choice])
    @results_calc = ResultsCalculator.create(@game.player_1, @game.player_2.choose)
    redirect to '/results'
  end

  get '/results' do
    @game = Game.instance
    @results_calc = ResultsCalculator.instance
    @result = @results_calc.result
    erb :results
  end

  run! if app_file == $0
end
