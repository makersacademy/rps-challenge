require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'
require './lib/round.rb'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :enter_names
  end

  post '/names' do
    player_1 = Player.new(name: params[:p1_name])
    player_2 = Player.new(name: params[:p2_name], human: (params[:player_2_type] == 'human'))
    Game.new(player_1: player_1, player_2: player_2)
    Round.round_instance = nil
    redirect '/play'
  end

  get '/play' do
    @game = Game.game_instance
    @round = Round.round_instance
    erb :game
  end

  post '/p1_move' do
    p params
    Round.new(player_1_move: params[:p1_choice].to_sym)
    if Game.game_instance.players[:player_2].human == true
      redirect '/play'
    else
      #RESULTS
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
