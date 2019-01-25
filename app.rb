require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  set :sessions, true

  before do
    @game = Game.instance
  end

  get '/' do
    erb :menu
  end

  post '/singleplayer' do
    erb :sp_input
  end

  post '/spsetup' do
    player1 = Player.new(params[:player1])
    player2 = Computer.new
    rounds = params[:rounds]
    @game = Game.create(player1, player2, rounds)
    redirect '/play'
  end

  post '/multiplayer' do
    erb :mp_input
  end

  post '/mpsetup' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    rounds = params[:rounds]
    @game = Game.create(player1, player2, rounds)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon' do
    @game.turn.assign_move(params[:weapon])
    redirect '/botcheck'
  end

  get '/botcheck' do
    if @game.player2.is_a? Computer
      @game.player2.assign_move
      redirect '/result'
    elsif @game.turn == @game.player2
      @game.switch_turn
      redirect '/result'
    else
      @game.switch_turn
      redirect '/play'
    end
  end

  get '/result' do
    @winner = @game.round_winner?
    if @winner != "Draw!"
      @winner.increment_score
      @game.increment_round
    end
    if @game.game_over?
      erb :game_over
    else
      erb :result
    end
  end

end
