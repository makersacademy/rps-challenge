require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base

  def game_state
    @player = $game.player
    @cpu_player = $game.cpu_player
    @player_hand = @player.hand.to_s.upcase
    @cpu_hand = @cpu_player.hand.to_s.upcase
    @winner = $game.winner
  end

  def switch_play_switch
    $game.switch_turns
    $game.random_choice
    $game.switch_turns
  end

  def check_draw
    game_state
    if @winner == :draw
      redirect :draw
    else
      redirect :game
    end
  end

  get '/' do
    erb :index
  end

  post '/p1' do
    erb :p1
  end

  post '/p2' do
    erb :p2
  end

  post '/name' do
    p params
    player = Player.new(params[:player_name])
    cpu_player = Player.new('Computer')
    $game = Game.new(player,cpu_player)
    redirect '/play'
  end

  get '/play' do
    game_state
    erb :play
  end

  get '/game' do
    game_state
    erb :game
  end

  get '/draw' do
    game_state
    erb :draw
  end

  post '/rock' do
    $game.rock
    switch_play_switch
    check_draw
  end

  post '/paper' do
    $game.paper
    switch_play_switch
    check_draw
  end

  post '/scissors' do
    $game.scissors
    switch_play_switch
    check_draw
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
