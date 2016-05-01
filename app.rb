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

  get '/single_player' do
    erb :single_player
  end

  get '/multi_player' do
    erb :multi_player
  end

  post '/set_multi_player_names' do
    Round.create(Player.new(params[:player1_name]), Player.new(params[:player2_name]))
    redirect '/game_play'
  end

  post '/set_player_name' do
    Round.create(Player.new(params[:player_name]))
    redirect '/game_play'
  end

  post '/set_choice' do
    Round.instance.player1.choose(params[:choice])
    Round.instance.player2.choose
    redirect '/result'
  end

  post '/multi_player_set_choices' do
    Round.instance.player1.choose(params[:choice1])
    Round.instance.player2.choose(params[:choice2])
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
