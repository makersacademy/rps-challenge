class Machine
  WEAPONS = [:ROCK, :PAPER, :SCISSORS]
  
  def choose_weapon
    WEAPONS.sample
  end
end
