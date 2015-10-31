require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base

  def game_state
    @player = $game.player
    @cpu_player = $game.cpu_player
    @player_hand = @player.hand
    @cpu_hand = @cpu_player.hand
  end

  def switch_cpu_play_and_switch
    $game.switch_turns
    $game.random_choice
    $game.switch_turns
  end

  get '/' do
    erb :index
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

  post '/rock' do
    $game.rock
    switch_cpu_play_and_switch
    redirect :game
  end

  post '/paper' do
    $game.paper
    switch_cpu_play_and_switch
    redirect :game
  end

  post '/scissors' do
    $game.scissors
    switch_cpu_play_and_switch
    redirect :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
