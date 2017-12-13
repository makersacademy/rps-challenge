require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:Player_name])
    computer = Computer.new
    @game = Game.create(player, computer)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    @game.player_1.choice = params[:Player_choice]
    redirect '/result'
  end

  get '/result' do
    @game.player_2.randomizer
    erb :result
  end

  run! if app_file == $0
end
