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
    return @winner = "You win!" if scissors_win || rock_win || paper_win
    @winner = "You lose!"
  end

  private
  def draw
    @user == @computer.comp
  end

  def scissors_win
    (@user == "scissors" && @computer.comp == "paper")
  end

  def rock_win
    (@user == "rock" && @computer.comp == "scissors")
  end

  def paper_win
    (@user == "paper" && @computer.comp == "rock")
  end
end

# test=Game.new("paper","rock")
