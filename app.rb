require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end


  get'/play' do
    @game = $game
    erb(:play)
  end

  post '/rock_paper_scissors' do
    @game = $game
    @player_rps_choice =  $game.player.select_rps(params[:rps_choice])
    redirect '/game'
  end

  get '/game' do
    @game = $game
    @player_rps_choice = $game.player.rps_choice
    @game.random_opponent_rps
    @opponent_random_rps = $game.opponent_rps
    @game.game_summary($game.player)
    @message = $game.message
    erb(:game)
  end


  run! if app_file == $0

end
