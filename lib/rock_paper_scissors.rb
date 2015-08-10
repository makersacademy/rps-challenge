require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base

  DEFAULT_PLAYER_NAME = "Anonymous"
  RPS_HANDS = [ :rock, :paper, :scissors ]
  $player_count = 0

  enable :sessions

  set :views, proc { File.join(root, '..', 'views') }
  set :public_folder, proc { File.join(root, '..', 'public') }

  get '/' do
    erb :index
  end

  post '/' do
    @player_name = get_player_name params
    result = play_hand params if params[:hand]
    @display_result = result.to_s if result
    erb :index
  end

  get '/two-player' do
    erb :two_player
  end

  post '/two-player' do
    @capacity_check = game_full? unless session[:player_number]
    @player_name = get_player_name params
    session[:player_number] ? @player_number = session[:player_number] :  @player_number = set_up_player_number
    two_player_play_hand params if params[:hand]
    @your_hand = params[:hand] if params[:hand]
    @opponent_hand = get_opponent_hand if params[:hand]
    @winner = check_if_winner? if params[:hand]
    check_game_setup

    erb :two_player
  end

  private

  def check_game_setup
    set_up_two_player_game unless $game || $player_count < 1
  end

  def check_if_winner?
    if session[:player_number] == 1
      return true if $game.winner == $player_1
    else
      return true if $game.winner == $player_2
    end
  end

  def game_full?
    return true if $player_count > 1
  end

  def set_up_player_number
    session[:player_number] = 1 if $player_count == 0
    session[:player_number] = 2 if $player_count == 1
    $player_count += 1
  end

  def get_opponent_hand
    if session[:player_number] == 1
      opponent_hand = $player_2.hand_to_play
    else
      opponent_hand = $player_1.hand_to_play
    end
  end

  def two_player_play_hand params
    hand = params[:hand].to_sym
    if session[:player_number] == 1
      $player_1.set_hand hand
    else
      $player_2.set_hand hand
    end
    $game.play_hand_two_player
  end

  def set_up_two_player_game
    $player_1 = player = Player.new( { hands: RPS_HANDS } )
    $player_2 = player = Player.new( { hands: RPS_HANDS } )
    $game = Game.new({player_1: $player_1, player_2: $player_2})
  end

  def play_hand params
    hand = params[:hand].to_sym
    player = Player.new( { hands: RPS_HANDS } )
    game = Game.new( { player_1: player } )
    player.set_hand hand
    game.play_hand_single_player player
  end

  def get_player_name params
    player_name = session[:player_name] if session[:player_name]
    player_name = set_player_name params if params[:name]
    session[:player_name] = player_name
    player_name
  end

  def set_player_name params
    params[:name].empty? ? player_name = DEFAULT_PLAYER_NAME : player_name = params[:name]
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
