class Computer

  attr_reader :name, :weapon

  def initialize
    @choices = [:rock, :paper, :scissors]
    @name = "Computer"
    @weapon = set_weapon
  end

  def set_weapon
    @choices.sample
  end

end
