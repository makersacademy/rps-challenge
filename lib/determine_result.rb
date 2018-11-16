class DetermineResult

  def initialize(player_move, computer_move=ComputerMove.new)
    @player_move = player_move.downcase
    @computer_move = computer_move.select_move
  end

end
