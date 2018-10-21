require './lib/game'
require './lib/player'
require './lib/computer'
require 'sinatra/base'

class RPS < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/new_game' do
    if params[:players] == 'One Player'
      erb :new_game_one_player
    elsif params[:players] == 'Two Player'
      erb :new_game_two_player
    end
  end

  post '/name' do
    if params[:player_2_name].nil?
      player = Player.new(params[:name])
      @game = Game.create(player, Computer.new)
      redirect '/play_one_player'
    else
      player_1 = Player.new(params[:player_1_name])
      player_2 = Player.new(params[:player_2_name])
      @game = Game.create(player_1, player_2)
      redirect '/play_two_player'
    end
  end

  get '/play_one_player' do
    erb :play_one_player
  end

  get '/play_two_player' do
    erb :play_two_player
  end

  post '/choice' do
    if params[:player_2_move].nil?
      @game.player_1.pick_move(params[:player_1_move].to_sym)
      @game.player_2.pick_move
    else
      @game.player_1.pick_move(params[:player_1_move].to_sym)
      @game.player_2.pick_move(params[:player_2_move].to_sym)
    end
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
