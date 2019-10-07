
class Computer

attr_reader :computer

  def initialize(computer_player)
    @computer = computer_player
    # @options = ["rock", "paper", "scissors"]
  end

  def computer_move
    ["rock", "paper", "scissors"].sample
  end
end
