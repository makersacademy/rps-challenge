require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

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

  # start the server if ruby file executed directly
  run! if app_file == $0
end
