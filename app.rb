require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/new_game' do
    player_1 = Player.new(params[:player_1_name])
    Game.instance.add_player(player_1)
    redirect '/play'
  end

  get '/play' do
    @player_1 = Game.instance.players.first
    erb :play
  end

  run! if app_file == $0

end
