require 'sinatra'
require_relative './game.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    $game = Game.new
    erb(:index)
  end

  post '/name' do
    $game.create_player(params[:player_name])
    redirect '/choose-move'
  end

  get '/choose-move' do
    erb(:choose_move)
  end

  post '/move' do
    $game.player.save_move(params[:move])
    "#{$game.player.name} played #{$game.player.move}"
    
  end




  run! if app_file == $0
end