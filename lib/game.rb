class Game

  attr_reader :player_1, :player_1_choice

  def initialize(player_1)
    @player_1 = player_1
  end

  def store_player_1_choice(choice)
    @player_1_choice = choice
  end

end