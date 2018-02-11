require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/computer'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  before do
    @game = Game.instance
  end

  post '/name' do
    player_1 = Player.new(params[:player_1])
    computer = Computer.new
    @game = Game.create(player_1, computer)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/move' do
    erb(:move)
  end

  post '/result' do
    @game.player_1.choose(params[:move])
    @game.computer.choose
    erb(:result)
  end

  run! if app_file == $0

end
