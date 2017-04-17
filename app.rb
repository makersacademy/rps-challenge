require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/computer'
require_relative './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
   erb :index
  end

  post '/name' do
    redirect '/' if params[:player_name] == ''
    session[:player] = Player.new(params[:player_name])
    redirect :play
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/move' do
    @player = session[:player]
    @player.add_move params[:move].to_sym
    redirect :duel
  end

  get '/duel' do
    game = Game.new
    @player = session[:player]
    @computer = Computer.new
    @computer.choose_move
    @result = game.winner @player.move, @computer.move
    erb :duel
  end
end
