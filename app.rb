require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  attr_reader :game

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
    @game = Game.create(player)
    redirect '/game'
  end

  get '/game' do
    erb :game
  end

  post '/rps' do
    game.player.choice(params[:choice])
    game.choice
    game.final_result
    redirect '/result'
  end

  get '/result' do
      erb game.final_result
  end

  run! if app_file == $0
end
