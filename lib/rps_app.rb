require 'sinatra/base'
require_relative './rock_paper_scissors'
require_relative './human_player'
require_relative './ai'
require_relative './outcome_formatter'

class RpsApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end
  

  get '/game_vs_machine' do

    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
 
    if session[:player_1] && session[:player_2]
      outcome = RockPaperScissors.new(session[:player_1], session[:player_2]).outcome 
      @result = OutcomeFormatter.new.format_outcome(outcome,session[:player_1],session[:player_2])
    end

    erb :game
  end


  get '/game_vs_human' do

    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
 
    if session[:player_1] && session[:player_2]
      outcome = RockPaperScissors.new(session[:player_1], session[:player_2]).outcome 
      @result = OutcomeFormatter.new.format_outcome(outcome,session[:player_1],session[:player_2])
    end

    erb :game
  end


  post'/player_names' do
    session[:player_1] = HumanPlayer.new(params[:player_1_name], 'R') 
    session[:player_2] = HumanPlayer.new(params[:player_2_name], 'R') 
    redirect '/game_vs_machine' if params[:player_2_name] == ''
    redirect '/game_vs_human'
  end


  post '/stand_off' do
    player_1_name = session[:player_1].name
    player_1_weapon = params[:player_1_weapon] 
    session[:player_1] = HumanPlayer.new(player_1_name, player_1_weapon) 
    session[:player_2] = AI.new

    redirect '/game_vs_machine'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
