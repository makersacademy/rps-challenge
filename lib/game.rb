class Game
  WEAPON = [:rock, :paper, :scissors]
  
  def player_choice(weapon)
    @weapon = weapon
  end

  def result
    :win
  end
end