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

  post '/multiplayer' do
    erb :mp_input
  end

  post '/input' do
    @type = params[:game_type]
    erb :input
  end

  post '/setup' do
    player1 = Player.new(params[:player1])
    params[:player2].nil? ? player2 = Computer.new
    : player2 = Player.new(params[:player2])
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
    @game.increment_round_and_score(@winner) if @winner != "Draw!"
    @game.game_over? ? erb(:game_over) : erb(:result)
  end

end
