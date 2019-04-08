require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

# This class is just the wrapper for the website.
class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/one_player' do
    session[:no_players] = 1
    redirect '/player_names'
  end

  post '/two_player' do
    session[:no_players] = 2
    redirect '/player_names'
  end

  get '/player_names' do
    erb(:player_names)
  end

  post '/player_names' do
    first_player = Player.new(params[:player_name_1])
    if session[:no_players] == 1
      session[:game] = Game.new(first_player)
    else
      second_player = Player.new(params[:player_name_2])
      session[:game] = Game.new(first_player, player_2: second_player)
    end
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    @options = Game::POSSIBLE_MOVES
    erb(:play)
  end

  post '/first_move' do
    session[:game].choose_move(0, params[:possible_moves])
    redirect '/play'
  end

  post '/second_move' do
    session[:game].choose_move(1, params[:possible_moves])
    redirect '/result'
  end

  post '/one_player_result' do
    session[:game].choose_move(0, params[:possible_moves])
    session[:game].choose_move(1)
    redirect '/result'
  end

  get '/result' do
    @game = session[:game]
    erb(:result)
  end
end
