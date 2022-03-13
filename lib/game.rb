require_relative 'turn_manager'

class Game

  attr_reader :players, :turn_manager, :result

  # turn_manager needs mocking out

  def initialize(turn_manager = TurnManager.new)
    @players = []
    @turn_manager = turn_manager
    @result = nil
  end

  def new_player(name)
    @players << Player.new(name) # Need to mock this out at some point
  end

  def reset_players
    @players = []
  end

  def change_player
    @turn_manager.change_turn
  end

  def reset_turns
    @turn_manager.reset
  end

  # def determine_result

  # end

  def self.instance
    @game ||= Game.new
  end

end
