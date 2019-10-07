class Game

  def initialize(player_pick, computer = Computer.new)
    @player_pick = player_pick
    @computer_pick = computer.random
  end

  def calculate_winner
    if @computer_pick == @player_pick
      winner = "it's a draw!"
    elsif player_1_win?
      winner = "player wins!"
    else
      winner = "computer wins!"
    end
    winner
  end

  def player_1_win?
    @player_pick == :rock && @computer_pick == :scissors ||
    @player_pick == :paper && @computer_pick == :rock ||
    @player_pick == :scissors && @computer_pick == :paper
  end

end

class Computer
  def random
    [:paper, :scissors, :rock].sample
  end
end
