class Game
  WEAPON = [:rock, :paper, :scissors]
  
  def player_choice(weapon)
    @player_choice = weapon
  end

  def result
    computer = Computer.new
    computer_weapon = Weapon.new(computer.choice)
    choice = Weapon.new(@player_choice)
    choice.beats?(computer_weapon) ? :win : :lose
  end
end