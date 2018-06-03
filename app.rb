require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:name])
    opponent = Computer.new
    $game = Game.new(player, opponent)
    redirect '/player'
  end

  get '/player' do
    @game = $game
    erb(:player)
  end

  get '/rock' do
    @game = $game
    @game.player.select_move("Rock")
    erb(:rock)
  end

  get '/paper' do
    @game = $game
    @game.player.select_move("Paper")
    erb(:paper)
  end

  get '/scissors' do
    @game = $game
    @game.player.select_move("Scissors")
    erb(:scissors)
  end

  run! if app_file == $0
end
