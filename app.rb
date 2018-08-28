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
    @rounds = params[:rounds].to_i
    @player = Player.new(params[:player_1_name], params[:player_1_title])
    @computer = Player.new
    session[:game] = Game.new(@player, @computer, @rounds)
    redirect '/round'
  end

  get '/win_check' do
    @game = session[:game]
    redirect @game.end? ? '/end' : '/round'
  end
  
  get '/round' do
    @game = session[:game]
    @player_1 = @game.player_1
    @player_2 = @game.player_2

    erb(:round)
  end

  post '/moves' do
    @game = session[:game]
    @game.player_1.moves(params[:move])
    @game.player_2.moves(["rock", "paper", "scissors"].sample)
    redirect '/round_winner'
  end

  get '/round_winner' do
    @game = session[:game]
    @player_1 = @game.player_1
    @player_2 = @game.player_2
    @round_winner = @game.round_winner
    @game.save_result
    erb(:round_winner)
  end

  get '/end' do
    @game = session[:game]
    @winner = @game.find_winner
    erb(:end)
  end

  get '/reset' do
    @game = session[:game]
    @game.reset
    redirect '/round'
  end

end
