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
   return :win if @player.choice == "rock" && @computer == "scissors"
   return :win if @player.choice == "paper" && @computer == "rock"
   return :win if @player.choice == "scissors" && @computer == "paper"
   return :draw if @player.choice == "rock" && @computer == "rock"
   return :draw if @player.choice == "paper" && @computer == "paper"
   return :draw if @player.choice == "scissors" && @computer == "scissors"
   return :lose
 end
end
