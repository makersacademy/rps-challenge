# frozen_string_literal: true

require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class Rps < Sinatra::Base

  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    session[:name]=params[:player_name]
    redirect '/game'
  end

  get '/names' do
    
   player = Player.new(session[:name])
   $game = Game.new(player) 
    
    redirect '/game'
  end

  get '/game' do
    erb :names
  end

  post '/compute' do
    
    $game.player.move = params[:move]
    $game.get_result

    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $PROGRAM_NAME
end
