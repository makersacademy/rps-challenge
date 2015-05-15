class Game

  GOAL = 1

  def initialize(playerClass, goal = GOAL)
    @player_1 = initialize_player(playerClass, "Player 1")
    @player_2 = initialize_player(playerClass, "Player 2")
    @goal = goal
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

  def goal
    @goal
  end

end