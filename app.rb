require 'sinatra'
require './lib/game'

class RPSWeb < Sinatra::Application

  get '/' do
    erb(:index)
  end

  post '/play' do
    player_1, player_2 = Player.new('Him'), Player.new('Her')
    @game = Game.new(player_1, player_2)
    @game.player_1.choice = params[:weapon]
    erb(:outcome)
  end

end
