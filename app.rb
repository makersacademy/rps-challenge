require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :name
  end

  before do
    @player = Player.instance
    @game = Game.instance
  end

  post '/start' do
    @player = Player.create(params[:player_1])
    @game = Game.create
    erb :start
  end

  before do
    @player = Player.instance
    @game = Game.instance
  end

  post '/result' do
    @player.move = params[:move]
    erb :result
  end

  run! if app_file == $0

end
