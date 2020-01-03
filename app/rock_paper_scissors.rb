require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/computer.rb'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  post '/play/:id' do
    @game = $game
    @game.player_choose(params["id"])
    @game.computer_choose
    redirect '/winner'
  end

  get '/winner' do
    @game = $game
    erb(:winner)
  end

  run! if app_file == $0
end