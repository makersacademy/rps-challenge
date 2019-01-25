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
    erb :index
  end

  post '/spsetup' do
    player1 = Player.new(params[:player1])
    player2 = Computer.new
    rounds = params[:rounds]
    @game = Game.create(player1, player2, rounds)
    redirect '/play'
  end

  post '/mpsetup' do
    player1 = Player.new(params[:player1])
    player1 = Player.new(params[:player1])
    rounds = params[:rounds]
    @game = Game.create(player1, player2, rounds)
    redirect '/play'
  end

  get '/play' do
    erb :play
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

  post '/rock' do
    @game.turn.assign_move(params[:rock])
    redirect '/botcheck'
  end

  post '/scissors' do
    @game.turn.assign_move(params[:scissors])
    redirect '/botcheck'
  end

  post '/paper' do
    @game.turn.assign_move(params[:paper])
    redirect '/botcheck'
  end

  get '/botcheck' do
    if @game.player2.is_a? Computer
      @game.player2.assign_move
    else
      @game.switch_turn
    end
    redirect '/result'
  end


end
