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
  
  get '/game' do

    player_1_name = session[:player_1_name]
    player_1_weapon = session[:player_1_weapon]
 
    @player_1 = HumanPlayer.new(player_1_name, player_1_weapon)

    if player_1_weapon
      (outcome = RockPaperScissors.new(@player_1).outcome) 
      @outcome = OutcomeFormatter.new.format_outcome(outcome)
    end

    erb :game
  end

  post'/player_name' do
    session[:player_1_name] = params[:player_1_name] 
    redirect '/game'
  end

  post '/stand_off' do
    session[:player_1_weapon] = params[:player_1_weapon] 
    redirect '/game'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
