class Game
  attr_reader :player, :computer

  def initialize(player_decision, computer_decision)
    @player = player_decision
    @computer = computer_decision
  end

  def draw?
    @player == @computer
  end

  def win?
    return true if @player == "Rock" && @computer == "Scissors"
    return true if @player == "Paper" && @computer == "Rock"
    return true if @player == "Scissors" && @computer == "Paper"
  end

  def lose?
    return true if @player == "Paper" && @computer == "Scissors"
    return true if @player == "Scissors" && @computer == "Rock"
    return true if @player == "Rock" && @computer == "Paper"
  end

end
