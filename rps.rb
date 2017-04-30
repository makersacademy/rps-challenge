require 'sinatra'
require_relative './lib/player'
require_relative './lib/computer'
require_relative './lib/game'
require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :home
  end

  get '/single_player' do
    erb :single_player
  end

  get '/two_players' do
    erb :two_players
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    @game = Game.start(player1, player2)
    redirect '/game'
  end

  post '/name' do
    player1 = Player.new(params[:player1])
    player2 = Computer.new('Computer')
    @game = Game.start(player1, player2)
    redirect '/game'
  end

  before do
    @game = Game.instance
  end

  get '/game' do
    erb :game
  end

  get '/rock' do
    @game.rock
    draw_and_evaluate if second_player
    single_player ? computer_draws : next_player
  end

  get '/paper' do
    @game.paper
    draw_and_evaluate if second_player
    single_player ? computer_draws : next_player
  end

  get '/scissors' do
    @game.scissors
    draw_and_evaluate if second_player
    single_player ? computer_draws : next_player
  end

  get '/result' do
    erb :result
  end

  def draw_and_evaluate
    @game.evaluate
    redirect '/result'
  end

  def next_player
    redirect '/game'
  end

  def second_player
    @game.turn.name != @game.b.name
  end

  def single_player
    @game.b.name == 'Computer'
  end

  def computer_draws
    @game.bot_move
    redirect '/result'
  end

  run! if app_file == $0
end
