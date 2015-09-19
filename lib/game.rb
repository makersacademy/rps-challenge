class Game

  attr_accessor :choice


  def user_choice(choice)
    @choice = choice
  end

  def comp_choice
    ["rock", "paper","scissors"].sample
  end

  def draw?
  return true if comp_choice == @choice
  end

  def winner?
    if user_choice("scissors") && comp_choice == "paper"
    elsif user_choice("paper") && comp_choice == "rock"
    elsif user_choice("rock") && comp_choice == "scissors"
    end
  end
  
end
