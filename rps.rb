require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:player])
    @player = player
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
