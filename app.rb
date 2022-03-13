require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/play' do
    $game = Game.new(Player.new(params[:player_1]))
    redirect '/play'
  end

  post '/move' do
    $game.player.move = params[:move]
  end

  run! if app_file == $0
end