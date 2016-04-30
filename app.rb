require 'sinatra/base'
require './lib/player'
require './lib/round'


class GamePlay < Sinatra::Base

  before do
    @round = Round.instance
  end

  get '/' do
    erb :index
  end

  post '/set_player_name' do
    player = params[:player_name]
    Round.create(Player.new(player))
    redirect '/game_play'
  end

  post '/set_choice' do
    Round.instance.player1.choose(params[:choice])
    Round.instance.player2.choose
    redirect '/result'
  end

  get '/game_play' do
    erb :game_play
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0

end
