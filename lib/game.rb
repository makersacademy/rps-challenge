class Game
  attr_reader :player_choice

  WEAPON = [:rock, :paper, :scissors]
  
  def player_choice(weapon)
    @player_choice = weapon
  end

  def result(opponent_weapon)
    choice = Weapon.new(@player_choice)
    return :draw if choice.type == opponent_weapon.type
    choice.beats?(opponent_weapon) ? :win : :lose
  end
end