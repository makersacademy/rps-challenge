require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    Game.create(Game, player)
    redirect '/play'
  end

  get '/play' do
    @player_name = @game.player.name
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
