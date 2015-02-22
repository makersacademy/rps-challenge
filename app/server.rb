require 'sinatra/base'
require_relative '../lib/game'
require_relative '../lib/player'
require_relative '../lib/computer'

class RPS < Sinatra::Base

  set :views, Proc.new { File.join(root, "..", "views") }

  player = Player.new
  computer = Computer.new
  game = Game.new(player, computer)

  get '/' do
    erb :index
  end

  get '/enter_name' do
    erb :enter_name
  end

  post '/new_game' do
    @name = params[:name]
    @weapon = params[:weapon]
    player.name = @name
    player.weapon = @weapon
    computer.pick
    p computer.weapon.to_s.capitalize
    p player.name
    p player.weapon
    p game.winner
    erb :new_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
