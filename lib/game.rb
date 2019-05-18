class Game

  attr_reader :player_move, :computer_move

  def initialize(player_move, computer_move)
    @player_move = player_move
    @computer_move = computer_move
  end

  def result
    return "Draw" if @player_move == @computer_move
      outcomes = [
        ["Rock", "Scissors"],
        ["Paper", "Rock"],
        ["Scissors", "Paper"]]
      outcomes.include?([@player_move, @computer_move])
    return "You win! :)" if outcomes = true
    return "Computer wins :(" if outcomes = false

    end
  end
