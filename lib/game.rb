class Game

  attr_reader :player_name, :player_selection, :computer_selection

  RULES = {
    Rock:     { Rock: 'Draw', Paper: 'Lose', Scissors: 'Win' },
    Paper:    { Rock: 'Win', Paper: 'Draw', Scissors: 'Lose' },
    Scissors: { Rock: 'Lose', Paper: 'Win', Scissors: 'Draw'}
  }

  def initialize(player_name, player_selection, computer_selection)
    @player_name = player_name
    @player_selection = player_selection
    @computer_selection = computer_selection
  end

  def winner?
    result == 'Win'
  end

  def result
    return if @computer_selection.nil?
    RULES[@player_selection][@computer_selection]
  end

end
