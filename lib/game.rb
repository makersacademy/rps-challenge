require_relative './computer'
require_relative './players'

class Game
  attr_reader :winner, :user2, :user

  def initialize(user, user2 = Computer.new.comp)
    @user = user
    @user2 = user2
    @winner = ""
  end

  def self.create(user, computer = Computer.new.comp)
    @game = Game.new(user, computer)
  end

  def self.instance
    @game
  end

  def result
    return @winner = ": Oh wait, there is a draw!" if draw
    return @winner = "wins!" if win
    @winner = "loses!"
  end

  private
  def draw
    @user == @user2
  end

  def win
    scissors_win || rock_win || paper_win || lizard_win || spock_win
  end

  def scissors_win
    @user == "scissors" && (@user2 == "paper" || @user2 == "lizard")
  end

  def rock_win
    @user == "rock" && (@user2 == "scissors" || @user2 == "lizard")
  end

  def paper_win
    @user == "paper" && (@user2 == "rock" || @user2 == "spock")
  end

  def lizard_win
    @user == "lizard" && (@user2 == "paper" || @user2 == "spock")
  end

  def spock_win
    @user == "spock" && (@user2 == "rock" || @user2 == "scissors")
  end
end

# test=Game.new("paper","rock")
