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
    p @opponent_pick
    @game = Game.new(@player_pick)
    "You picked #{@player_pick}. Game result: #{@game.result}"

  end

  run! if app_file == $0
  end
