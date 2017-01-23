require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class MyApp < Sinatra::Base

  get '/' do
  	erb :index
  end

  get '/play' do
    check_p2
    erb :play
  end

      before do
        @game = Game.instance
      end

  post '/game' do
    @game.player_1.choice = params[:p1_weapon]
    @game.play
    erb :game
  end

  get '/tp_game' do
    erb :tp_game
    end

  post '/switch' do
    @game.player_1.choice = params[:p1_weapon]
    erb :switch
  end

  post '/game_over' do
      @game.player_2.choice = params[:p2_weapon]
      @game.play
      erb :game
  end

  private

  def check_p2
    params[:p2_name].empty? ? one_player : two_player
  end

  def one_player
      player_1 = Player.new(params[:p1_name])
      @game = Game.create(player_1)
  end

  def two_player
    player_1 = Player.new(params[:p1_name])
    player_2 = Player.new(params[:p2_name])
    @game = Game.create(player_1, player_2)
    redirect "/tp_game" 
  end

  run! if app_file == $0

end
