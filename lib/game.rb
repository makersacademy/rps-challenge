class Game
  attr_accessor :selected, :random

  def initialize(selected)
    @options = ["rock", "paper", "scissors"]
    @selected = selected
  end

  def random
    p "IS BEEN SELECTED"
    @random = @options.sample
  end

  def playing
    p "IS BEEN SELECTED"
    p @selected
    case [@selected.downcase, @random]
    when ["paper", "rock"], ["scissors", "paper"], ["rock", "scissors"] then return "You win"
    when ["rock", "rock"], ["scissors", "scissors"], ["paper", "paper"] then return "You tied"
    else return "You lose"
    end
  end
end
