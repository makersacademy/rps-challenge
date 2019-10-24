require_relative 'move'
require_relative 'player'

class Game
  attr_reader :player_1, :move

  WIN = {
    "Rock" => "Paper",
    "Paper" => "Scissors",
    "Scissors" => "Rock"
  }.freeze

  def initialize(player_1, move)
    @player_1 = player_1
    @move = move
  end

  def player_last_action
    @move.player_turns.last
  end

  def computer_last_action
    @move.computer_turns.last
  end

  def outcome
    if tie
      :tie
    elsif lose
      :lose
    elsif win
      :win
    end
  end



  def tie
    player_last_action == computer_last_action
  end

  def lose
    !win && !tie
  end

  def win
    player_last_action == WIN[computer_last_action]
  end

  def self.create(player_1, move)
    @game = Game.new(player_1, move)
  end

  def self.instance
    @game
  end
end
