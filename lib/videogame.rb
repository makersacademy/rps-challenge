require_relative 'player'
require_relative 'computer'

class Videogame

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Computer.new
  end

  def player
    if player_1.move == "rock" && player_2.computer_move == "scissors"
      "WIN!"
    elsif player_1.move == "scissors" && player_2.computer_move == "paper"
      "WIN!"
    elsif player_1.move == "paper" && player_2.computer_move == "rock"
      "WIN!!"
    elsif player_1.move == player_2.computer_move
      "TIE!"
   end
  end

  def end_game
    @points
  end

end
