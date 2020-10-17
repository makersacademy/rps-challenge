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

  post '/enter_names' do
    @game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    session[:game] = @game
    redirect to ('/play_eachother')
  end

  get '/play_eachother' do
    @game = session[:game]
    erb :play_eachother
  end

  post '/multiplayer_move' do
    @game = session[:game]
    ## Save the current turns choice
    @game.current_turn.choose(params[:choice])
    ## switch turns
    if @game.player_2.move.nil?
      @game.switch_turns
      redirect to ('/play_eachother')
    else 
      redirect to ('/multiplayer_results')
    end
  end

  get '/multiplayer_results' do
    @game = session[:game]
    @results_calc = ResultsCalculator.new(@game.player_1, @game.player_2)
    @result = @results_calc.result
    erb :multiplayer_results
  end

  post '/computer_game' do
    erb :computer_game
  end

  post '/play_computer' do
    @game = Game.new(Player.new(params[:name]), Computer.new)
    session[:game] = @game
    erb :play_computer
  end

  post '/results' do
    @game = session[:game]
    @game.player_1.choose(params[:choice])
    @results_calc = ResultsCalculator.new(@game.player_1, @game.player_2.choose)
    @result = @results_calc.result
    erb :results
  end

  run! if app_file == $0
end
