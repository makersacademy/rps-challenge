class ScoreDecider
  attr_reader :player_1, :player_2

  def initialize(player_1_move, player_2_move)
    @player_1_move = player_1_move.downcase
    @player_2_move = player_2_move.downcase
  end

  def decider
    if @player_1_move == "rock" && @player_2_move == "rock"
      "Tie!"
    elsif @player_1_move == "rock" && @player_2_move == "scissors"
      "Rock beats scissors: Player 1 wins!"
    elsif @player_1_move == "rock" && @player_2_move == "paper"
      "Paper beats rock: Player 2 wins!"
    elsif @player_1_move == "paper" && @player_2_move == "rock"
      "Paper beats rock: Player 1 wins!"
    elsif @player_1_move == "paper" && @player_2_move == "scissors"
      "Scissors beats paper: Player 2 wins!"
    elsif @player_1_move == "paper" && @player_2_move == "paper"
      "Tie!"
    elsif @player_1_move == "scissors" && @player_2_move == "rock"
      "Rock beats scissors: Player 2 wins!"
    elsif @player_1_move == "scissors" && @player_2_move == "scissors"
      "Tie!"
    elsif @player_1_move == "scissors" && @player_2_move == "paper"
      "Scissors beats paper: Player 1 wins!"
    end
  end
end
