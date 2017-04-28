require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:player_1])
    Game.start(player)
    redirect '/move'
  end

  get '/move' do
    @game = Game.instance
    erb(:play)
  end
end
