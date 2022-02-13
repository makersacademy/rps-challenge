require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/random'
require './lib/result'

class RockPaperScissors < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do
    erb :start
  end

  post '/names' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    $player.choose(params[:choice])
    redirect '/game_play'
  end

  get '/game_play' do
    $game = Game.new
    $game.play_game($player.chosen_option)
    erb :game_play
  end

  post '/new_player' do
    redirect '/'
  end

  post '/replay' do
    redirect '/play'
  end

  run! if app_file == $0
end
