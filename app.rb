require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/referee'
require './lib/game'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    params[:player_name]
    Game.create(Player.new(params[:player_name]))
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/choice' do
    @game = Game.instance
    @game.chose(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    erb :result
  end

  run! if app_file == $0
end
