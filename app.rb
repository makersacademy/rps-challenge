# app.rb

require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' # if development?
require './lib/game'
require './lib/player'


class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/game' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new("Computer")
    $game = Game.new(player_1, player_2)
    @game = $game
    erb(:game)
  end

  post '/result' do
    $game.player_1.choice = params[:throw]
    $game.player_2.choice
    $game.match
    @game = $game
    erb(:match)
  end


  run! if app_file ==$0
end