class Rps
  attr_reader :player, :player_move, :computer_move

  def initialize(player_name, computer = 'computer')
    @player = player_name
    @computer = computer
    @moves = ['rock', 'paper', 'scissors']
  end

  def select_move(choice)
    @player_move = choice
    @computer_move = @moves.sample
  end
end
