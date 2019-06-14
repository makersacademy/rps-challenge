class Game
  attr_reader :player_name
  def initialize(player_name)
    @player_name = player_name
    @player_choice = ''
    @comp_choice = ''
  end

  def decide(selection)
    @comp_choice = random
    @player_choice = selection
  end

end
