require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/computer'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
    player_1 = Player.new(params[:player_1])
    player_2 = Computer.new
    @game = Game.new(player_1, player_2)
    redirect to '/play'
  end

  get '/play' do
    erb :play
  end

  get '/game_over' do
    erb :game_over
  end



  run! if app_file == $0
end
