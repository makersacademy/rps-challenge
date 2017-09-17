class Computer
attr_reader :name, :weapon

  def initialize
    @name = "Robert the Robot"
  end

  def weapons
    ["Rock", "Paper", "Scissors"]
  end

  def weapon
    weapons[Kernel.rand(0..2)]
  end
end

#   WEAPONS = ["Rock", "Paper", "Scissors"]
#
#   def weapon
#     WEAPONS.sample
#   end
# end
