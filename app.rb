require 'sinatra/base'
require './lib/game'
require './lib/bot'
require './lib/player'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_name]), Bot.new)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/move' do
    $game.player_one.input_move(params[:move])
    redirect '/results'
  end

  get '/results' do
    @game = $game
    erb(:results)
  end

  run! if app_file == $0

end
