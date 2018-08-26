require 'sinatra/base'
require './lib/player'
require './lib/game'

class R_P_S < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/register' do
    erb(:register)
  end

  get '/goodbye' do
    'Goodbye'
  end

  post '/names' do
    @player = Player.new(params[:player_1_name], params[:player_1_title])
    @computer = Player.new
    session[:game] = Game.new(@player, @computer)
    # redirect to game round 1
    redirect '/round'
  end

  get '/play' do
    # check for winner
    redirect '/round'
    
  end
  
  get '/round' do
    @game = session[:game]
    @player_1 = @game.player_1
    @player_2 = @game.player_2

    erb(:round)
  end

  post '/round_winner' do
    @game = session[:game]
    @player_1 = @game.player_1
    @player_2 = @game.player_2
    @player_1.moves(params[:move])
    @player_2.moves(["rock", "paper", "scissors"].sample)
    @round_winner = @game.round_winner
    erb(:round_winner)
  end

end
