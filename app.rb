require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  configure do
    register Sinatra::Reloader
  end

  before do
    @player = Player.instance
    @computer = Computer.instance
    @game = Game.instance(@player, @computer)
  end

  get "/" do
    @game.reset
    erb(:index)
  end

  get "/play" do
    erb(:play)
  end

  post "/register" do
    @player.name = params[:player_name]
    redirect "/play"
  end

  post "/move" do
    @player.move = params[:player_move]
    @computer.generate_move
    @game.play
    redirect "/play"
  end
 
  run! if app_file == $0
end
