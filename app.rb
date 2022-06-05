# app.rb

require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader' # if development?
require './lib/game'
require './lib/player'
require './lib/multi'


class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/game' do
    multi = Multi.new(params[:player_1_name], params[:player_2_name], params[:players_num].to_i)
    $game = multi.game_creation
    @game = $game
    erb(:game)
  end

  post '/result' do
    $game.player_1.choice = params[:throw].to_sym
    $game.player_2.throw
    $game.match
    @game = $game
    erb(:match)
  end


  run! if app_file ==$0
end