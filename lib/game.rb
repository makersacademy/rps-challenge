require_relative 'player'

class Game

  attr_reader :computer_choice, :choice, :player

  def initialize(player = Player.new, choice)
    @player = player
    @choice = choice
    @computer_choice = ["Rock", "Paper", "Scissors"].sample
  end

  def rps_game(computer_choice = @computer_choice)
    case @choice
    when "Rock"
      return "Game is a draw" if computer_choice == "Rock"
      return "You win!"  if computer_choice == "Scissors"
      return "You lose!" if computer_choice == "Paper"
    when "Paper"
      return "Game is a draw" if computer_choice == "Paper"
      return "You win!"  if computer_choice == "Rock"
      return "You lose!" if computer_choice == "Scissors"
    when "Scissors"
      return "Game is a draw" if computer_choice == "Scissors"
      return "You win!"  if computer_choice == "Paper"
      return "You lose!" if computer_choice == "Rock"
    end
  end

end
