class Game

  BEST_OF_DEFAULT = 1

  def initialize(playerClass, best_of = BEST_OF_DEFAULT)
    @player_1 = initialize_player(playerClass, "Player 1")
    @player_2 = initialize_player(playerClass, "Player 2")
    @best_of = best_of
  end

  def initialize_player(playerClass, name)
    player = playerClass.new name
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

end