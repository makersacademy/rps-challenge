require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/alt_game'

class Rps < Sinatra::Base

  helpers do
    def game_state
      @game_type = $game.game_type.to_s
      @players = $game.player_count
      @player = $game.player
      @cpu_player = $game.cpu_player
      @current_player = $game.current_player
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
      if @winner == nil
        redirect :play  
      elsif @winner == :draw
        redirect :draw
      else
        redirect :game
      end
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

  post '/1pname' do
    player = Player.new(params[:player_name])
    cpu_player = Player.new('Computer')
    players = 1
    if params[:game_mode]=='classic_game'
      $game = Game.new(player,cpu_player,players)
    else
      $game = AltGame.new(player,cpu_player,players)
    end
    redirect '/play'
  end

  post '/2pname' do
    player = Player.new(params[:player_name])
    cpu_player = Player.new(params[:player2_name])
    players = 2
    if params[:game_mode]=='classic_game'
      $game = Game.new(player,cpu_player,players)
    else
      $game = AltGame.new(player,cpu_player,players) 
    end
    redirect '/play'
  end

  get '/play' do
    game_state
    return erb :play if @game_type == 'classic'
    return erb :alt_play if @game_type == 'alt'
  end

  get '/game' do
    game_state
    erb :game
  end

  get '/draw' do
    game_state
    erb :draw
  end

  post '/clear_hands' do
    game_state
    @player.clear_hand
    @cpu_player.clear_hand
    redirect '/play'
  end

  post '/rock' do
    $game.weapon(:rock)
    switch_play_switch if $game.player_count==1
    $game.switch_turns if $game.player_count==2
    check_draw
  end

  post '/paper' do
    $game.weapon(:paper)
    switch_play_switch if $game.player_count==1
    $game.switch_turns if $game.player_count==2
    check_draw
  end

  post '/scissors' do
    $game.weapon(:scissors)
    switch_play_switch if $game.player_count==1
    $game.switch_turns if $game.player_count==2
    check_draw
  end

    post '/lizard' do
    $game.weapon(:lizard)
    switch_play_switch if $game.player_count==1
    $game.switch_turns if $game.player_count==2
    check_draw
  end

    post '/spock' do
    $game.weapon(:spock)
    switch_play_switch if $game.player_count==1
    $game.switch_turns if $game.player_count==2
    check_draw
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
