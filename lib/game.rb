class Game

  attr_reader :player_1, :player_2

  def initialize(playerClass)
    @player_1 = initialize_player(playerClass)
    @player_2 = initialize_player(playerClass)
  end

  def initialize_player(playerClass)
    player = playerClass.new
  end

end