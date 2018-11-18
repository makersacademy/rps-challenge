class Game

  attr_reader :player_1, :computer_weapon

  def initialize(player_1)
    @player_1 = player_1
    @computer_weapon = []
  end

  def computer_random_choice
    randon_selection = ['Rock', 'Paper', 'Scissors'].sample
    @computer_weapon << randon_selection
  end

end
