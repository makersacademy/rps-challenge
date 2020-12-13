class MultiGame
  attr_accessor :p1_selected, :p2_selected

  def initialize(p1_selected = p1_selected, p2_selected = p2_selected)
    @p1_selected = p1_selected
    @p2_selected = p2_selected
  end

  def playing
    case [@p1_selected.downcase, @p2_selected.downcase]
    when ["paper", "rock"], ["scissors", "paper"], ["rock", "scissors"] then return "Player 1 wins!"
    when ["rock", "rock"], ["scissors", "scissors"], ["paper", "paper"] then return "Game tied"
    else return "Player 2 wins!"
    end
  end
end
