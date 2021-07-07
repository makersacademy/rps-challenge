require 'sinatra'
require './lib/rock_paper_scissors'
require './lib/opponent_choice'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1_name] = params[:player1_name]
    redirect '/game'
  end

  get '/game' do
    @player1_name = session[:player1_name]
    erb(:game)
  end

  post '/run_game' do
    session[:player1_choice] = params[:weapon]
    redirect 'result'
  end

  get '/result' do
    @computer_choice = OpponentChoice.new.opponent_pick_rps
    @player1_name = session[:player1_name]
    @player1_choice = session[:player1_choice]
    @result = RockPaperScissorsResult.new.calculate_winner(@player1_choice,
      @computer_choice)
    erb(:result)
  end
end
