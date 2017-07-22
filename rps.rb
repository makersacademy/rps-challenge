require 'sinatra/base'
require './lib/player'
require './lib/game'
require 'pry'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    p params
    @game =  Game.create(player)
    redirect '/welcome'
  end

  get '/welcome' do
    @game = Game.instance
    @player = @game.player.name
    erb(:greeting)
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $0
end
