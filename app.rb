require 'sinatra/base'
require './lib/game.rb'

class GameRPS < Sinatra::Base
  enable :sessions
  set :session_secret, "here be dragons"

  before do
    @game = session[:game]
  end

  get '/' do
    session[:game] = Game.new
    erb :index
  end

  post '/number_players' do
    @game.number_players(params[:players])
    redirect '/setup'
  end

  get '/setup' do
    erb :setup
  end

  post '/startgame' do
    p2 = (params[:player_2_name].nil? ? 'K-2SO' : params[:player_2_name])
    @game.setup(params[:player_1_name], p2)
    redirect '/round_start'
  end

  get '/round_start' do
    erb :round_start
  end

  post '/player_1_move' do
    @game.player_1_move = params[:move]
    redirect '/player_2_choose' if @game.two_players
    redirect '/round_end'
  end

  get '/player_2_choose' do
    erb :player_2_choice
  end

  post '/player_2_move' do
    @game.player_2_move = params[:move]
    redirect '/round_end'
  end

  get '/round_end' do
    @game.play_round
    erb :round_end
  end

  post '/new_round' do
    @game.reset_round
    redirect '/round_start' if params[:new_round] == "Play again!"
    redirect '/victory_screen' if params[:new_round] == "New Players"
  end

  get '/victory_screen' do
    erb :victory
  end
end
