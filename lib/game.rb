require './lib/computer_player'
require './lib/human_player'

class Game

attr_reader :player, :computer

  def winner(user, computer)
    if user_wins(user, computer)
      return "you win!"
    elsif computer_wins(user,computer)
      return "the computer wins :("
    else
      return "it's a draw, play again..."
    end
  end

  private

  attr_reader :player, :computer

  def user_wins(user, computer)
    (user.move_choice == "paper" && computer.comp_choice == "rock") || (user.move_choice == "rock" && computer.comp_choice == "scissors") || (user.move_choice == "scissors" && computer.comp_choice == "paper")
  end

  def computer_wins(user, computer)
    (user.move_choice == "paper" && computer.comp_choice == "scissors") || (user.move_choice == "rock" && computer.comp_choice == "paper") || (user.move_choice == "scissors" && computer.comp_choice == "rock")
  end

end
