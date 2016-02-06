require_relative 'computer'

class Turn

attr_reader :p1_weapon, :computer_turn

  def initialize(p1_weapon, computer_turn_klass=ComputerTurn)
    @p1_weapon = p1_weapon
    @computer_turn = computer_turn_klass.new
  end

  def result
    if win?
      :win
    elsif draw?
      :draw_play_again
    else
      :lose
    end
  end


  private


  def draw?
    computer_turn == p1_weapon
  end
  
end
