class Game
  MATCHUPS = {
    Rock: :Paper,
    Paper: :Scissor,
    Scissor: :Rock }.freeze

  def initialize(player_class:,computer:)
    @player = player_class
    @computer = computer
  end

  def winner
    if @computer == @player.selected
      return :draw
    elsif MATCHUPS[@player.selected] == @computer
      return :loss
    elsif MATCHUPS[@computer] == @player.selected
      return :win
    end
  end
  
end
