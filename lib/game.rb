require_relative 'log'

class Game < Log

  attr_reader :current_turn, :battle_status

  RESULTS_HASH = { 'Rock' => 'Paper', 'Paper'=>'Scissors', 'Scissors'=>'Rock'}

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
    @log = ['The Battle Begins!']
    @hash = RESULTS_HASH
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def switch_turns
    @current_turn = opposite_of(current_turn)
  end

  def winner
    if @hash[player1.choice] == player2.choice then
      "#{player2.name} wins"
    elsif player1.choice == player2.choice then
      "It's a tie"
    else
      "#{player1.name} wins"
    end
  end

  def single_player_game?
    player2.class != Player
  end

  private

  attr_reader :players

  def can_play?(player)
    player != current_turn
  end

  def opposite_of(current_player)
    players.reject {|player| player == current_player }.first
  end
end
