require_relative "player"
require_relative "computer"

class Game

  RESULTS = { "rock" => "paper", "paper" => "scissors", "scissors" => "rock" }

  def self.create(player_1, player_2 = Computer.new)
    @running = Game.new(player_1, player_2)
  end

  def self.current
    @running
  end

  attr_reader :player_1, :player_2, :two_player

  def initialize(player_1, player_2 = Computer.new, two_player = false)
    @player_1 = player_1
    @player_2 = player_2
    @two_player = two_player
  end

  def winner
    first = player_1.choice
    second = player_2.choice
    return "You drew" if first == second
    RESULTS[first] == second ? "#{player_2.name} won!" : "#{player_1.name} won!"
  end

end
