require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :enter_names
  end

  post '/names' do
    player_1 = Player.new(name: params[:p1_name])
    player_2 = Player.new(name: params[:p2_name], human: (params[:player_2_type] == 'human'))
    Game.new(player_1: player_1, player_2: player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.game_instance
    erb :game
  end

  post '/move' do
    p params
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
