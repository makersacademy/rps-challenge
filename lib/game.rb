require_relative 'computer_player'
require_relative 'human_player'

class Game

  attr_reader :player, :computer, :move_choice

  def winner
    if user_wins
      return "you win!"
    elsif computer_wins
      return "the computer wins :("
    else
      return "it's a draw, play again..."
    end
  end

  private

  attr_reader :player, :computer, :move_choice

  def user_wins
    (player.move_choice == "paper" && computer.move_choice == "rock") || (player.move_choice == "rock" && computer.move_choice == "scissors") || (player.move_choice == "scissors" && computer.move_choice == "paper")
  end

  def computer_wins
    (player.move_choice == "paper" && computer.move_choice == "scissors") || (player.move_choice == "rock" && computer.move_choice == "paper") || (player.move_choice == "scissors" && computer.move_choice == "rock")
  end

end
