class Rps
  attr_reader :player, :player_move

  def initialize(player_name, computer = 'computer')
    @player = player_name
    @computer = computer
  end

  def select_move(choice)
    @player_move = choice
  end
end
