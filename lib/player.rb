
class Player

  attr_reader :name
  attr_accessor :choice

  def initialize(name)
    @name = name
  end

  def player_choice(move)
    @move = move
  end
end
