
class Move

  RULES = { "Rock" => "Scissors",
            "Paper" => "Rock",
            "Scissors" => "Paper" }

  attr_reader :type

  def initialize(type)
    @type = type
  end

  def beats?(other_move)
    RULES[@type]==other_move.type
  end

end
