require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class Rockpaperscissors < Sinatra::Base

enable :sessions

attr_reader :player, :game

  get '/' do
    erb :enter_name
  end

  post '/name' do
    session[:player] = Player.new(params[:player_name])
    redirect '/present_moves'
  end

  get '/present_moves' do
    @player = session[:player]
    erb :present_moves
  end

  post '/result' do
    @game = Game.new(params[:move])
    game.result(@game.move, @game.random_counter_move)
    erb :result
  end

end
