class Game

  def self.create(player)
    @running ||= Game.new(player)
  end

  def self.current
    @running
  end

  WEAPONS = ["Rock", "Paper", "Scissors"]

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def choice
    WEAPONS.sample
  end

  def winner(answer_1, answer_2)
    return "Draw" if answer_1 == answer_2
    results = { "rock" => "paper", "paper" => "scissors", "scissors" => "rock" }
    results[answer_1] == answer_2 ? answer_2 : answer_1
  end

end
