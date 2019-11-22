require 'sinatra/base'
require './lib/computer.rb'
require './lib/game.rb'
require './lib/player.rb'

class RPSController < Sinatra::Base

  enable :sessions # Enables use of session[:hash] for storing data

  get '/' do
    erb :index
  end

  post '/get_name' do
    game = Game.new(Player.new(params[:name]), Computer.new("Computer"))
    session[:game] = game
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/get_play' do
    session[:game].player1_enter_choice(params[:rps_select])
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

end
