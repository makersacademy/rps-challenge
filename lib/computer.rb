class Computer

  RULES = { rock: :scissors, paper: :rock, scissors: :paper}
  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :choose_weapon

  def initialize
    @choose_weapon = :new
  end

  def computer_weapon
    @choose_weapon = WEAPONS.sample
  end

  def result(player_weapon, choose_weapon)
    return :draw if draw(player_weapon, choose_weapon)
    return :win if beats(player_weapon, choose_weapon)
    return :lose if !beats(player_weapon, choose_weapon)
  end

  def draw(player_weapon, choose_weapon)
    player_weapon == choose_weapon
  end

  def beats(player_weapon, choose_weapon)
    RULES[player_weapon] == choose_weapon
  end

end
