require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:game] = Game.new(Player.new(params[:player_name]))
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    @options = Game::POSSIBLE_MOVES
    erb(:play)
  end

  post '/result' do
    session[:game].choose_move(0, params[:possible_moves])
    session[:game].choose_move(1)
    redirect '/result'
  end

  get '/result' do
    @game = session[:game]
    erb(:result)
  end
end
