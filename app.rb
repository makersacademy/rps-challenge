require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/computer'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    @game = Game.create(player,computer)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/game' do
    @game.player.choose(params[:choice])
    @game.computer.choose_hand
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
