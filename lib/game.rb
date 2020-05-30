class Game

  attr_reader :player_name, :player_move, :random_move

  def initialize
    @random_move = random_move
    @player_name = player_name
    @player_move = player_move
  end

  def computer_move
    move = ["Rock", "Paper", "Scissors"]
    @random_move = move.sample
  end
end
