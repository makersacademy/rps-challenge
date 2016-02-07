require_relative 'computer'

class Turn

RULES = {
  scissors: 'paper',
  rock: 'scissors',
  paper: 'rock'
}
attr_reader :p1_weapon, :p2_weapon

  def initialize(p1_weapon, p2_weapon_klass=ComputerTurn)
    @p1_weapon = p1_weapon
    @p2_weapon = p2_weapon_klass.new
  end

  def result
    if p1_win?
      :win
    elsif draw?
      :draw_play_again
    else
      :lose
    end
  end


  private

  def p1_win?
    RULES[@p1_weapon] == p2_weapon.to_s 
  end

  def draw?
    p2_weapon == p1_weapon
  end

end
