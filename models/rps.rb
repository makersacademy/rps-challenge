require './models/player'

class Rps

  attr_reader :available_moves, :players_move, :cpu_move

  def initialize
    @available_moves = ["Rock", "Paper", "Scissors"]
  end

  def decide_result(player, cpu)
    return player if rock_wins(player.move, cpu.move)
    return player if paper_wins(player.move, cpu.move)
    return player if scissors_wins(player.move, cpu.move)
    return "draw" if draw(player.move, cpu.move)
    cpu
  end

  private

  def rock_wins(player, cpu)
    player == "Rock" && cpu == "Scissors"
  end

  def paper_wins(player, cpu)
    player == "Paper" && cpu == "Rock"
  end

  def scissors_wins(player, cpu)
    true if player == "Scissors" && cpu == "Paper"
  end

  def draw(player, cpu)
    true if player == cpu
  end

end
