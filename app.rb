require 'sinatra/base'
require './lib/player'


class GamePlay < Sinatra::Base
  #enable :sessions

  get '/' do
    erb :index
  end

  post '/set_player_name' do
    player = params[:player_name]
    Round.create(Player.new(player))
    redirect '/game_play'
  end

  get '/game_play' do
    @player = Round.instance.player1
    erb :game_play
  end

  run! if app_file == $0

end
