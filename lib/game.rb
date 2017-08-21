require_relative './computer'

class Game
  attr_reader :winner, :computer, :user

  def initialize(user, computer = Computer.new.comp)
    @user = user
    @computer = computer
    @winner = ""
  end

  def result
    return @winner = ": Oh wait, there is a draw!" if draw
    return @winner = "wins!" if win
    @winner = "loses!"
  end

  private
  def draw
    @user == @computer
  end

  def win
    scissors_win || rock_win || paper_win || lizard_win || spock_win
  end

  def scissors_win
    @user == "scissors" && (@computer == "paper" || @computer == "lizard")
  end

  def rock_win
    @user == "rock" && (@computer == "scissors" || @computer == "lizard")
  end

  def paper_win
    @user == "paper" && (@computer == "rock" || @computer == "spock")
  end

  def lizard_win
    @user == "lizard" && (@computer == "paper" || @computer == "spock")
  end

  def spock_win
    @user == "spock" && (@computer == "rock" || @computer == "scissors")
  end
end

# test=Game.new("paper","rock")
