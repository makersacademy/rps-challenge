class Game
  MATCHUPS = {
    Rock: :Paper,
    Paper: :Scissor,
    Scissor: :Rock }

  def initialize(player_class:,computer_class:)
    @player = player_class
    @computer = computer_class
  end

  def result
    if @computer.choice == @player.choice
      return :draw
    elsif MATCHUPS[@player.choice] == @computer.choice
      return :loss
    elsif MATCHUPS[@computer.choice] == @player.choice
      return :win
    end
  end
  
end
