require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  before do
    @game = Game.current_game
  end

  get '/' do
    erb :index
  end

  post '/' do
    player = Player.new(params[:player_name])
    Game.start(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/play' do
    @game.compare(params[:attack])
    redirect '/result'
  end

  get '/result' do
    erb(@game.result)
  end

  run! if app_file == $0
end
