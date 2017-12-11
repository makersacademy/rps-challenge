class Computer

  # attr_accessor :computer_choice

  WEAPON = [:rock, :paper, :scissors]

  def weapon_choice
    WEAPON.sample
  end
end
