class Computer
  attr_reader :random_weapon
  WEAPONS = ['rock', 'paper', 'scissors']

  def initialize
    @random_weapon = WEAPONS.sample
  end

  # def randomise_weapon
  #   @random_weapon = WEAPONS.sample
  # end

end
