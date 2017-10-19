
class Move

  RULES = { "Rock" => "Scissors",
            "Paper" => "Rock",
            "Scissors" => "Paper" }

  attr_reader :type

  def initialize(type=random)
    @type = type
  end

  def beats?(other_move)
    RULES[@type]==other_move.type
  end

  private

  def random
    ["Rock", "Paper", "Scissors"].sample
  end
end
