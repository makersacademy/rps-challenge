class Game

  attr_reader :choice

  def initialize
    @choice = ['rock', 'paper', 'scissors']
  end

  def take_turn(selection)
    if choice.include? selection
      computer = computer_turn
      print "Computer chooses #{computer}."
       return "Player wins" if selection == "paper" && computer == "rock"
       return "Player wins" if selection == "scissors" && computer == "paper"
       return "Player wins" if selection == "rock" && computer == "scissors"
       return "Computer wins" if selection == "rock" && computer == "paper"
       return "Computer wins" if selection == "paper" && computer == "scissors"
       return "Computer wins"if selection == "scissors" && computer == "rock"
       return "Draw" if selection == "paper" && computer == "paper"
       return "Draw" if selection == "scissors" && computer == "scissors"
       return "Draw" if selection == "rock" && computer == "rock"
    else
      "Please enter either rock, paper or scissors"
    end
  end

  def computer_turn
    choice.sample
  end

end