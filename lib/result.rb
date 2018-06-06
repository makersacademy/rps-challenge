class Result
  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def win?
    outcome == :win
  end

  def lose?
    outcome == :lose
  end

  def draw?
    outcome == :draw
  end

  private

  def outcome
    return :win if player_wins?
    return :draw if @player.choice == @computer
    return :lose
  end

  def player_wins?
    @player.choice == "rock" && @computer == "scissors" ||
    @player.choice == "paper" && @computer == "rock" ||
    @player.choice == "scissors" && @computer == "paper"
  end
end
