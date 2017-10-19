
class Move

  RULES = { "Rock" => ["Scissors", "Lizard"],
            "Paper" => ["Rock", "Spock"],
            "Scissors" => ["Paper", "Lizard"],
            "Lizard" => ["Spock", "Paper"],
            "Spock" => ["Scissors", "Rock"] }

  attr_reader :type

  def initialize(type=random)
    @type = type
  end

  def beats?(other_move)
    RULES[type].include?(other_move.type)
  end

  private

  def random
    ["Rock", "Paper", "Scissors", "Lizard", "Spock"].sample
  end
end
