class Game
  attr_reader :player, :computer, :winner, :draw

  def initialize(player, computer)
    @player = player
    @computer = computer
    @winner = nil
  end

  def who_wins
    if @player.selection == "rock" && @computer.selection == "scissors" ||
    @player.selection == "scissors" && @computer.selection == "paper" ||
    @player.selection == "paper" && @computer.selection == "rock"
      @winner = @player
    elsif @player.selection == "scissors" && @computer.selection == "rock" ||
    @player.selection == "paper" && @computer.selection == "scissors" ||
    @player.selection == "rock" && @computer.selection == "paper"
      @winner = @computer
    else
      @winner
    end
  end
end
