require_relative 'move'
require_relative 'player'

class Game
  attr_reader :player_1, :move

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
      "It's a draw!"
    elsif lose
      "You lost!"
    elsif win
      "You won!"
    end
  end

  private

  def tie
    player_last_action == computer_last_action
  end

  def lose
    player_last_action == "Rock" && computer_last_action == "Paper" ||
    player_last_action == "Paper" && computer_last_action == "Scissors" ||
    player_last_action == "Scissors" && computer_last_action == "Rock"
  end

  def win
    !tie && !lose
  end

  def self.create(player_1, move)
    @game = Game.new(player_1, move)
  end

  def self.instance
    @game
  end
end
