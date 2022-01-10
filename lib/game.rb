class Game
  attr_reader :computer, :player, :selection

  def initialize(player)
    @player = player
  end

  def computer
    choices = ['Rock', 'Paper', 'Scissors']
    choices[rand(2)]
  end

  def player_selection(selection)
    @selection = selection
  end

end