class RobotPlayer

  attr_reader :name, :weapon

  def initialize
    @name = "Robot"
    @weapon = weapons[Kernel.rand(0..2)]
  end

  private

  def weapons
    ["Rock", "Paper", "Scissors"]
  end

end
