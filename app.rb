require 'sinatra'
require './lib/computer'
require './lib/game'
require './lib/player'

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
    computer = Computer.new("Computer")
    @game = Game.create(player, computer)
    redirect(:play)
  end

  get '/play' do
    @player = @game.player
    erb(:play)
  end

  run! if app_file == $0
end
