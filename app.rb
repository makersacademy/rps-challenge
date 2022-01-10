require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'
require './lib/match'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/game' do
    @player_one_name = $game.player_one.name
    erb :game
  end

  get '/results' do
    $match.decider
    @message = $match.show_message
    erb :results
  end

  post '/names' do
    player_one = Player.new(params[:player_one_name])
    $game = Game.new(player_one)
    redirect '/game'
  end

  post '/moves' do
    $match = Match.new(params[:move])
    redirect '/results'
  end

  run! if app_file == $0
end
