class Computer

  WEAPONS = [:rock, :paper, :scissors]

  def self.move_chooser
    WEAPONS.sample
  end


end
