require './lib/computer'
require './lib/player'

class Game

  def rules
    @paper = "paper"
    @rock = "rock"
    @scissors = "scissors"
    return "It is a draw!!" if @paper and @computer_move == "Paper"
    return "You Win!!" if @paper and @computer_move == "Rock"
    return "You Lose!!" if @paper and @computer_move == "Scissors"

    return "It is a draw!!" if @rock and @computer_move == "Rock"
    return "You Win!!" if @rock and @computer_move == "Scissors"
    return "You Lose!!" if @rock and @computer_move == "Paper"

    return "It is a draw!!" if @scissors and @computer_move == "Scissors"
    return "You Win!!" if @scissors and @computer_move == "Paper"
    return "You Lose!!" if @scissors and @computer_move == "Rock"
  end
end
  #   attr_reader :name, :computer_move_choice
  #
  # def player
  #   @name = Player.new("Spencer")
  #   @computer = Computer.new.computer_name
  # end
  #
  # def computer_move_choice
  #   @computer_move = Computer.new.computer_move
  # end
