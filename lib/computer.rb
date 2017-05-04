class Computer
  WEAPONS = [:rock, :paper, :scissors, :lizard, :spock].freeze

  def random_weapon
    WEAPONS.sample
  end

end
