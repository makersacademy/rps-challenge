class Computer_Player
attr_reader :computer_move, :name

  def initialize
    @name = ["Beccatron", "Motorized Harvesting Entity", "Intelligent Processor Robot", "Advanced Data Analyzing Golem"].sample
  end

  def computer_move
    @computer_move = ["Rock", "Paper", "Scissors"].sample
  end
end
