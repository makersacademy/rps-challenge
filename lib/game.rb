class Game
  attr_accessor :player_choice

  WEAPON = [:rock, :paper, :scissors]
  
  def result(opponent_weapon)
    choice = Weapon.new(@player_choice)
    return :draw if choice.type == opponent_weapon.type
    choice.beats?(opponent_weapon) ? :win : :lose
  end
end
