class Game

  attr_reader :player_move, :cpu_move

  def initialize(player_move)
    @player_move = player_move
  end

  def outcome
    cpu_move = cpu_turn
    if @player_move == "Rock" && cpu_move == "Scissors"
      "Player"
    elsif @player_move == "Paper" && cpu_move == "Rock"
      "Player"
    elsif @player_move == "Scissors" && cpu_move == "Paper"
      "Player"
    elsif @player_move == cpu_move
      "Draw"
    else
      "cpu"
    end
  end

  private

  def cpu_turn
    ["Rock", "Paper", "Scissors"].sample
  end

end
