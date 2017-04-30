require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/bot'
require 'pry'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player_1], :human)
    player2 = player2_create(params[:player_2])
    Game.start(player1, player2, params[:best_of])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/choice' do
    Game.instance.order[0].log(params[:choice].to_sym)
    two_player? ? two_player_route : one_player_route
  end

  get '/result' do
    @game = Game.instance
    @game.game_over? ? erb(:winner) : erb(:result)
  end

  private

  def two_player?
    Game.instance.player2.type == :human
  end

  def player2_create(player2)
    if player2 == ""
      Player.new(Bot.name, :bot)
    else
      Player.new(player2, :human)
    end
  end

  def one_player_route
    Game.instance.player2.random_choice
    Game.instance.play
    redirect '/result'
  end

  def two_player_route
    if Game.instance.order[0] == Game.instance.player1
      player2s_turn
    else
      player1s_turn
    end
  end

  def player2s_turn
    Game.instance.switch_player
    redirect '/play'
  end

  def player1s_turn
    Game.instance.play
    Game.instance.switch_player
    redirect '/result'
  end
end
