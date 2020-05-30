class Game

  attr_reader :player_move, :cpu_move

  def initialize(player_move, player2_move = nil)
    @player_move = player_move
    @cpu_move = player2_move
  end

  def outcome
    if @cpu_move.nil?
      outcome_single_player
    else
      outcome_multiplayer
    end
  end

  def outcome_single_player
    @cpu_move = cpu_turn
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

  def outcome_multiplayer
    if @player_move == "Rock" && cpu_move == "Scissors"
      "Player1"
    elsif @player_move == "Paper" && cpu_move == "Rock"
      "Player1"
    elsif @player_move == "Scissors" && cpu_move == "Paper"
      "Player1"
    elsif @player_move == cpu_move
      "Draw"
    else
      "Player2"
    end
  end

  private

  def cpu_turn
    ["Rock", "Paper", "Scissors"].sample
  end

end
