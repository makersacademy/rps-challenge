require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/player.rb'
require_relative './lib/computer.rb'
require_relative './lib/results.rb'

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/gamemode' do
    session[:gamemode] = params[:mode]
    redirect '/getnames'
  end

  get '/getnames' do
    erb(:names)
  end

  post '/setnames' do
    Game.start_game(params[:player_1], params[:player_2]) if params[:player_2] != nil
    Game.start_game(params[:player_1]) if params[:player_2] == nil
    redirect '/play'
  end

  get '/play' do
    @game_mode = session[:gamemode]
    erb(:play)
  end

  post '/player1_move' do
    @game.player1.make_move(params[:move])
    redirect '/play'
  end

  post '/player2_move' do
    @game.player2.make_move(params[:move])
    redirect '/play'
  end
end
