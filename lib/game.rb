class Game
  attr_reader :rps, :computer_choice, :player
  attr_accessor :winner

  def initialize(player)
    @rps = ["Rock", "Paper", "Scissors"]
    @computer_choice = ""
    @winner = nil
    @player = player
  end

  def computer_turn
    @computer_choice = @rps.sample
  end

  def outcome(user_choice)
    user_choice = user_choice.capitalize
    return @winner = "It's a draw!" if user_choice == @computer_choice
    return @winner = @player if user_choice == "Paper" && @computer_choice == "Rock"
    return @winner = @player if user_choice == "Scissors" && @computer_choice == "Paper"
    return @winner = @player if user_choice == "Rock" && @computer_choice == "Scissors"

    @winner = "Computer"
  end
end
