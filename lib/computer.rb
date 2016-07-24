class Computer

WEAPONS = [:Rock, :Paper, :Scissors]

  def self.random_select
    weapons = WEAPONS
    weapons.sample
  end

end
