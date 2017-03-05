class Game

  attr_reader :computer_selection, :current_selection

  def initialize(player_selection, computer_selection)
    @player_selection = player_selection
    @computer_selection = computer_selection
    @current_selection = [@player_selection, computer_selection]
  end

  def result
    return :draw if computer_selection == @player_selection
    winning_combos = [[:ROCK, :SCISSORS], [:SCISSORS, :PAPER], [:PAPER, :ROCK]]
    winning_combos.include?(current_selection) ? :win : :lose
  end

end
