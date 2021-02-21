require 'sinatra/base'
require_relative 'lib/classes.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions # refactoring note - might not need this

  get '/' do
    erb :index
  end

  post '/submit' do
    session[:player_1] = Player.new(params[:player_name])
    session[:player_2] = Player.new("computer")
    redirect '/start_game'
  end

  get '/start_game' do
    @player_1_name = session[:player_1].name
    erb :start_game
  end

  post '/choice' do
    session[:p1_turn] = Turn.new(params[:choice])
    session[:p2_turn] = Turn.new(Random_Choice.new.spin)
    redirect '/result'
  end

  get '/result' do
    calc = Calculator.new(session[:p1_turn], session[:p2_turn])
    @player_1_name = session[:player_1].name
    @player_2_name = session[:player_2].name
    @p1_choice = session[:p1_turn].choice
    @p2_choice = session[:p2_turn].choice
    @result = ResultPrinter.new(session[:player_1], session[:player_2], calc.result)
    erb :result
  end

  run! if app_file == $0
end
