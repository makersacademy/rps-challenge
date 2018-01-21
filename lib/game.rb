require "player"

class Game
  def self.create(player)
    @running ||= Game.new(player)
  end

  def self.current
    @running
  end

  WEAPONS = ["rock", "paper", "scissors"]
  attr_reader :player_1

  def initialize(player)
    @player_1 = player
  end

  def choice
    WEAPONS.sample
  end

  def winner(answer_1, answer_2)
    return "draw" if answer_1 == answer_2
    results = { "rock" => "paper", "paper" => "scissors", "scissors" => "rock" }
    results[answer_1] == answer_2 ? "lose" : "win"
  end

end
