require_relative 'computer'
class Rps
  attr_reader :choice, :computer_choice

  def initialize(choice, computer_choice = Computer.new.weapon)
    @choice = choice
    @computer_choice = computer_choice
  end

  def rock
    case computer_choice
    when "rock"
      "Tie! no one wins"
    when "scissors"
      "Player wins"
    when "paper"
      "Computer wins"
    end
  end

  def paper
    case computer_choice
    when "paper"
      "Tie! no one wins"
    when "scissors"
      "Computer wins"
    when "rock"
      "Player wins"
    end
  end

  def scissors
    case computer_choice
    when "scissors"
      "Tie! no one wins"
    when "paper"
      "Player wins"
    when "rock"
      "Computer wins"
    end
  end

  def match
    case choice
    when "rock"
      rock
    when "paper"
      paper
    when "scissors"
      scissors
    end
  end
end
