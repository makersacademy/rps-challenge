require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  before do
    @game = Game.instance
  end

  post '/name' do
    player_1 = Player.new(params[:player_1])
    @game = Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/move' do
    erb(:move)
  end

  post '/selection' do
    @game.player.choose(params[:move])
    erb(:selection)
  end

  run! if app_file == $0

end
