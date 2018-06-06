require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    opponent = Computer.new
    @game = Game.launch(player, opponent)
    redirect '/player'
  end

  get '/player' do
    erb(:player)
  end

  post '/compete' do
    @game.player.select_move(params["player_move"])
    @game.opponent.move
    redirect '/compete'
  end

  get '/compete' do
    erb(:compete)
  end

  run! if app_file == $0
end
