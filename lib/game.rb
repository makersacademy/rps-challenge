class Game
  attr_reader :player, :computer, :winner

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
    elsif @computer.selection == "rock" && @player.selection == "scissors" ||
    @computer.selection == "scissors" && @player.selection == "paper" ||
    @computer.selection == "paper" && @player.selection == "rock"
      @winner = @computer
    else
      @winner
    end
  end
end
