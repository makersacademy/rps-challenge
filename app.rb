require 'sinatra/base'
require './lib/computer'
require './lib/results_calculator'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :index 
  end
  
  get '/multiplayer_game' do
    erb :multiplayer_game
  end

  post '/enter_player_names' do
    @game = Game.create(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect to '/player_1_move'
  end

  get '/player_1_move' do
    @game = Game.instance
    erb :player_1_move
  end

  post '/save_player_1' do
    @game = Game.instance
    @game.current_turn.choose(params[:choice])
    redirect to '/player_2_move'
  end

  get '/player_2_move' do
    @game = Game.instance
    @game.switch_turns
    erb :player_2_move
  end

  post '/calculate_multiplayer_results' do
    @game = Game.instance
    @game.current_turn.choose(params[:choice])
    redirect to '/results'
  end

  get '/results' do
    @game = Game.instance
    @results_calc = ResultsCalculator.create(@game.player_1, @game.player_2)
    erb @results_calc.result
  end

  get '/computer_game' do
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

  post '/calculate_computer_results' do
    @game = Game.instance
    @game.player_1.choose(params[:choice])
    @game.player_2.choose
    redirect to '/results'
  end

  get '/tie' do
    @results_calc = ResultsCalculator.instance
    erb :tie 
  end

  get '/player_1_wins' do
    @results_calc = ResultsCalculator.instance
    erb :player_1_wins
  end

  get '/player_2_wins' do
    @results_calc = ResultsCalculator.instance
    erb :player_2_wins
  end

  get '/computer_wins' do
    @results_calc = ResultsCalculator.instance
    erb :computer_wins
  end

  run! if app_file == $0
end
