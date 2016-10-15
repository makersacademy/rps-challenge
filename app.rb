require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/players' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:computer])
    @game = Game.new(player_1, player_2)

  end

  get '/play' do
    
  end

  get '/game_over' do

  end



  run! if app_file == $0
end
