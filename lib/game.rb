require_relative "rules"

class Game
  @@current_game = nil
  attr_accessor :player_1, :player_2

  def initialize rules = Rules
    @@current_game = self
    @rules = rules
  end

  def self.current_game
    @@current_game
  end

  def player_one_win_state
    @rules.compare(player_1_choice, player_2_choice)
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
