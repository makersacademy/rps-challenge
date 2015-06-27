class Game

  def initialize playerClass, comparator
    @player_1 = initialize_player playerClass, comparator
    @player_2 = initialize_player playerClass, comparator
  end

  def initialize_player player_class, comparator
    playerClass.new comparator
  end
  
end