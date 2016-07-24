class RobotPlayer

  def name
    "Robot"
  end

  def weapon
    weapons[Kernel.rand(0..2)]
  end

  private

  def weapons
    ["Rock", "Paper", "Scissors"]
  end

end
