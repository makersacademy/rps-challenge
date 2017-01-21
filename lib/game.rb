require "compare"

class Game
  @@current_game = nil
  attr_writer :player_1, :player_2

  def initialize comparator = Compare
    @@current_game = self
    @comparator = comparator
  end

  def self.current_game
    @@current_game
  end

  def player_one_win_state
    @comparator.throws(player_1_choice, player_2_choice)
  end

  def player_1_name
    @player_1.name
  end

  def player_2_name
    @player_2.name
  end

  def player_1_choice
    @player_1.choice
  end

  def player_2_choice
    @player_2.choice
  end
end
