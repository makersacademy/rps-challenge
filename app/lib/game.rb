class Game
  MATCHUPS = {
    Rock: :Paper,
    Paper: :Scissor,
    Scissor: :Rock }

  def initialize(player_class:,computer:)
    @player = player_class
    @computer = computer
  end

  def result
    if @computer == @player.selected
      return :draw
    elsif MATCHUPS[@player.selected] == @computer
      return :loss
    elsif MATCHUPS[@computer] == @player.selected
      return :win
    end
  end
  
end
