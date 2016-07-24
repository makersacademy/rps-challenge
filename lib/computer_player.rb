class ComputerPlayer
attr_reader :computer_move, :name

  def initialize
    @name = "Beccatron"
  end

  def computer_move
    @computer_move = ["Rock", "Paper", "Scissors"].sample
  end
end
