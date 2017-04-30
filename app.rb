require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/player.rb'
require_relative './lib/computer.rb'

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
    @game = Game.start_game(params[:player_1], params[:player_2]) if params[:player_2] != nil
    @game = Game.start_game(params[:player_1]) if params[:player_2] == nil
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/player_move' do
    @game.player1.make_move(params[:move])
    redirect '/play'
  end
end
