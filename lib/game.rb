class Game
  WEAPONS = [:rock, :paper, :scissors]
  def player_choice=(weapon)
    fail 'not a possible weapon' unless WEAPONS.includes? weapon
    @player_choice = weapon
  end
  def result
    RULES[player_choice][computer.choice()] ? :win : :lose
  end
end
