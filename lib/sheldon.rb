class Sheldon

  attr_reader :name

  ACTIONS = [:rock, :paper, :scissors, :lizzard, :spock]

  def initialize
    @name = "Sheldon"
  end

  def move
    ACTIONS.sample
  end

end
