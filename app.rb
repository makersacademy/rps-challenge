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
    player = Player.new(params[:name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/battle' do
    @game.player.weapon = params[:weapon]
    redirect '/play'
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
