require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/rock' do
    @game = Game.instance
    @game.player.rock
    redirect '/result'
  end

  post '/paper' do
    @game = Game.instance
    @game.player.paper
    redirect '/result'
  end

  post '/scissors' do
    @game = Game.instance
    @game.player.scissors
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @game.cpu_choose
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
