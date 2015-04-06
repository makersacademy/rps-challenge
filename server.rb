require 'sinatra/base'
require './lib/player'
require './lib/auto_player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  @@player1, @@player2, @@p1_move, @@p2_move = nil, nil, nil, nil

  get '/' do
    unless @@player2.nil?
      @@player1, @@player2, @@p1_move, @@p2_move = nil, nil, nil, nil
    end
    erb :homepage
  end

  post '/play' do
    @player_name = params[:player_name]
    p params[:type]
    @@player2 = AutoPlayer.new if params[:type] == 'single'
    @@p2_move = :auto if params[:type] == 'single'

    if @@player1.nil?
      @@player1 = Player.new(@player_name)
      session[:player] = 1
    else
      @@player2 = Player.new(@player_name)
      session[:player] = 2
    end
    erb :play
  end

  get '/play' do
    move_variables_to_nil
    @player_name = @@player1.name if session[:player] == 1
    @player_name = @@player2.name if session[:player] == 2
    erb :play
  end

  post '/result' do
    set_player_moves

    if @@player2.nil? || @@p2_move.nil? || @@p1_move.nil?
      erb :wait
    else
      game = Game.new
      @results = game.result(game_setup)
      erb :result
    end
  end

  get '/result' do
    if @@player2.nil? || @@p2_move.nil? || @@p1_move.nil?
      erb :wait
    else
      game = Game.new
      @results = game.result(game_setup)
      erb :result
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME

  private

  def move_variables_to_nil
    @@p1_move = nil
    @@p2_move = nil unless @@player2.is_a? AutoPlayer
  end

  def game_setup
    if @@player2.is_a? AutoPlayer
      { player1: @@player1, p1_move: @@p1_move,
        player2: @@player2, p2_move: @@player2.move }
    else
      { player1: @@player1, p1_move: @@p1_move,
        player2: @@player2, p2_move: @@p2_move }
    end
  end

  def set_player_moves
    @@p1_move = params[:move].to_sym if session[:player] == 1
    @@p2_move = params[:move].to_sym if session[:player] == 2
  end

end
