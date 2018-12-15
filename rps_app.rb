require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  before { @game = Game.instance }

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])

    @game = Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.player_1.choose(params[:choice])
    erb :attack
  end

  run! if app_file == $0
end
