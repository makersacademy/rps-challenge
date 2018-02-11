require_relative 'player'
require_relative 'computer'

class Videogame

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Computer.new(player_2)
  end

  def play
    if player_1.move == player_2.computer_move
      "TIE!!"
    elsif(player_1.move == "rock" && player_2.computer_move == "scissors") ||
          (player_1.move == "scissors" && player_2.computer_move == "paper") ||
          (player_1.move == "paper" && player_2.computer_move == "rock")
          @points = @player_1.increase_points
          "You Win!!"
    else
     "Matrix wins!"
   end
  end

  def end_game
    @points
  end

end
