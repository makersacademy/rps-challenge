class Game
  MATCHUPS = {
    Rock: :Paper,
    Paper: :Scissors,
    Scissors: :Rock }.freeze

  def initialize(player_class:,computer_class:)
    @player = player_class
    @computer = computer_class
  end

  def result
    return :draw if @computer.choice == @player.choice
    
    MATCHUPS[@player.choice] == @computer.choice ? :loss : :win
  end
  
end
