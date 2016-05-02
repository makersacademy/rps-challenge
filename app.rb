require 'sinatra/base'
require './lib/game'

class GamePlay < Sinatra::Base

  before do
    @game = Game.instance
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
    Game.create(Player.new(params[:player1_name]), Player.new(params[:player2_name]))
    redirect '/game_play'
  end

  post '/set_player_name' do
    Game.create(Player.new(params[:player_name]))
    redirect '/game_play'
  end

  post '/set_choice' do
    @game.player1.choose(params[:choice])
    @game.player2.choose
    redirect '/result'
  end

  post '/set_choice_first_player' do
    @game.player1.choose(params[:choice])
    redirect '/game_play_second_player'
  end

  post '/set_choice_second_player' do
    @game.player2.choose(params[:choice])
    redirect '/result'
  end

  get '/game_play' do
    erb :game_play
  end

  get '/game_play_second_player' do
    erb :game_play_second_player
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0

end
