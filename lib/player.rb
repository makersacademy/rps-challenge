class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def weapon_choice(move = "")
    @move = (move == "" ? [:rock, :paper, :scissors].sample : move)
  end

end
