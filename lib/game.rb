require_relative './computer'

class Game 
  attr_reader :player_pick, :pc, :spin

  def initialize(player, computer = Computer.new)
    @player_pick = player
    @computer_pick = computer
    @spin = choose_winner
  end

  def choose_winner
    @pc = @computer_pick.random_pick

    if @player_pick == pc
      "Even Steven" 
    elsif player_winner?
      "I knew I can do it"
    else
      "You're better than this"
    end
  end
  
  private

  def player_winner?
    (@player_pick == "Rock" && @pc == "Scissors") || (@player_pick == "Papper" && @pc == "Rock") || (@player_pick == "Scissors" && @pc == "Papper")
  end
  
end
