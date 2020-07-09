class Game
  attr_reader :rps, :player_1, :player_2
  attr_accessor :winner, :computer_choice

  def initialize(player, player_2 = "Computer")
    @rps = ["Rock", "Paper", "Scissors"]
    @computer_choice = ""
    @winner = nil
    @player_1 = player
    @player_2 = player_2
  end

  def computer_turn
    p "called!"
    @computer_choice = @rps.sample
  end

  def outcome(player_1_choice, player_2_choice = "")
    computer_turn
    p @computer_choice
    player_2_choice = @computer_choice if player_2_choice == ""
    p player_2_choice
    choice_formatting(player_1_choice, player_2_choice)

    return @winner = "It's a draw!" if player_1_choice == player_2_choice
    return @winner = @player_1 if player_1_choice == "Paper" && player_2_choice == "Rock"
    return @winner = @player_1 if player_1_choice == "Scissors" && player_2_choice == "Paper"
    return @winner = @player_1 if player_1_choice == "Rock" && player_2_choice == "Scissors"

    return @winner = @player_2
  end

  def choice_formatting(player_1_choice, player_2_choice)
    player_1_choice.capitalize!
    player_2_choice.capitalize!
  end

end
