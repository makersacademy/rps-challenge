require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do 
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    $game = Game.new(player)
    redirect '/game' 
  end

  get '/game' do
    @game = $game
    erb(:game)
  end

  post '/move' do 
    @game = $game
    @game.player.choose(params[:move])
    redirect '/game'
  end

  run! if app_file == $0
end