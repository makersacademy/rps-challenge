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
    if user_choice == @computer_choice
      "It's a draw!"
    elsif user_choice == "Paper" && @computer_choice == "Rock"
      @winner = @player
    elsif user_choice == "Scissors" && @computer_choice == "Rock"
      @winner = "Computer"
    elsif user_choice == "Scissors" && @computer_choice == "Paper"
      @winner = @player
    elsif user_choice == "Rock" && @computer_choice == "Paper"
      @winner = "Computer"
    elsif user_choice == "Rock" && @computer_choice == "Scissors"
      @winner = @player
    elsif user_choice == "Paper" && @computer_choice == "Scissors"
      @winner = "Computer"
    end
  end
end
