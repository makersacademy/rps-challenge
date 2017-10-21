require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/computer_player.rb'

class Rockpaperscissors < Sinatra::Base

enable :sessions

attr_reader :counter

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
    playermove = params[:playermove]
    @counter = ComputerPlayer.new.random_counter_move
    result = Game.new.beats_computer?(playermove, @counter)
    erb result
  end

end
