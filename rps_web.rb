require 'sinatra/base'
require_relative 'lib/game.rb'
require_relative 'lib/player.rb'

class Rock_Paper_Scissor < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/play' do
    joseph = Player.new(params[:player])
    Game.new_game(joseph)
    @game = Game.instance
    erb(:play)
  end

  get '/result' do
    @game = Game.instance
    @game.player_move(params[:value])
    @game.computer_move
    erb(:result)
  end
  run! if app_file == $0
end
