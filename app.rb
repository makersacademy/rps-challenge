require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  before '/' do
    Game.create(Player.new)
  end

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @game.player_one.set_name(params[:player_one_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
