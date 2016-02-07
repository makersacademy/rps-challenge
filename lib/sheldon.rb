class Sheldon

  attr_reader :name

  ACTIONS = [:rock, :paper, :scissors, :lizzard, :spock]

  def initialize
    @name = "Sheldon"
  end

  def set_move
    @action = ACTIONS.sample
  end

  def move
    @action
  end

  def reset
    @action = nil
  end

end
