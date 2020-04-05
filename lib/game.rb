class Game

attr_reader :player, :computer_turn

  def initialize(player, computer=['rock', 'paper', 'scissors'].sample)
    @player = player
    @computer_turn = computer
  end

  def decide_winner
    return "It's a draw" if @player == @computer_turn
    return "player wins" if @player == "rock" && @computer_turn == "scissors"
    return "player wins" if @player == "scissors" && @computer_turn == "paper"
    return "player wins" if @player == "paper" && @computer_turn == "rock"
    return "computer wins"
  end
end
