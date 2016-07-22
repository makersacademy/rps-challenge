require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Ai.new
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/battle' do
    @game.player_1.weapon = params[:weapon]
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
