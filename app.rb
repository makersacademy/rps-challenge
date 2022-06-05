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

  get '/player_2' do
    if $game.players_num == 1
      $game.player_1.choice = params[:throw].to_sym
      $game.player_2.throw
      redirect '/result'
    elsif $game.turn == 1
      $game.player_1.choice = params[:throw].to_sym
      $game.switch_turn
      @game = $game
      erb(:game)
    elsif $game.turn == 2
      $game.player_2.choice = params[:throw].to_sym
      redirect '/result'
    end
  end
    
  get '/result' do
    $game.match
    @game = $game
    erb(:match)
  end

  run! if app_file ==$0
end