class Sheldon

  attr_reader :name

  ACTIONS = [:rock, :paper, :scissors, :lizzard, :spock]

  def initialize
    @name = "Sheldon"
  end

  def set_move
    @move = ACTIONS.sample
  end

  def move
    @move
  end

end
