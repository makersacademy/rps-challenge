require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/player' do
    @player = Player.new(params[:name])
    erb :player_pick
  end

  post '/result' do
    @player_pick = params[:player_pick].to_sym
    @game = Game.new(@player_pick)
    p @game.player_pick
    p @game.opponent_pick
    p @game.result
    erb :result
  end

  run! if app_file == $0
  end
