require 'sinatra/base'
require './lib/player'
require './lib/referee'
require './lib/game'

class Rps < Sinatra::Base
  # Game.create

  get '/' do
    @game = Game.instance || Game.create
    erb :index
  end

  post '/name' do
    Game.instance.add_player(Player.new(params[:player_name]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/choice' do
    @game = Game.instance
    @game.chose(@game.players[params[:player_id].to_i], params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    erb :result
  end

  run! if app_file == $0
end
