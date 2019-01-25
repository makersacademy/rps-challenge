class Player

  attr_reader :name, :moves, :outcomes

  def initialize(name)
    @name = name
    @moves = []
    @outcomes = { "won" =>[],
      "lost" => [],
      "draw" => []
    }
  end

  def store_move(move)
    @moves << move
  end

  def add_outcome(result, game)
    @outcomes[result] << game
  end

  def count_outcome(category)
    @outcomes[category].count
  end
end
