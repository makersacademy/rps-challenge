require_relative './computer'

class Game
  attr_reader :winner, :computer, :user

  def initialize(user, computer = Computer.new)
    @user = user
    @computer = computer
    @winner = ""
  end

  def result
    return @winner = "Draw" if draw
    return @winner = "You win!" if win
    @winner = "You lose!"
  end

  private
  def draw
    @user == @computer.comp
  end

  def win
    scissors_win || rock_win || paper_win || lizard_win || spock_win
  end
  
  def scissors_win
    @user == "scissors" && (@computer.comp == "paper" || @computer.comp == "lizard")
  end

  def rock_win
    @user == "rock" && (@computer.comp == "scissors" || @computer.comp == "lizard")
  end

  def paper_win
    @user == "paper" && (@computer.comp == "rock" || @computer.comp == "spock")
  end

  def lizard_win
    @user == "lizard" && (@computer.comp == "paper" || @computer.comp == "spock")
  end

  def spock_win
    @user == "spock" && (@computer.comp == "rock" || @computer.comp == "scissors")
  end
end

# test=Game.new("paper","rock")
