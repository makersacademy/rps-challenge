class Selection

  attr_reader :player

  def initialize(player_selection)
    @player = player_selection
  end

  def computer
    ['Rock', 'Paper', 'Scissors'].sample
  end

end