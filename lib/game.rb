require_relative "scorekeeper"

class Game
  def self.create(player_one, player_two)
    @current_game = Game.new(player_one, player_two)
  end

  class << self
    attr_reader :current_game
  end
end

class Game
  attr_reader :player_one, :player_two

  def initialize(player_one, player_two, scorekeeper=Scorekeeper.new)
    @player_one = player_one
    @player_two = player_two
    @players = [@player_one, @player_two]
    @scorekeeper = scorekeeper
  end

  def chooser
    @players.find { |player| !player.has_chosen? }
  end

  def complete?
    @players.all?(&:has_chosen?)
  end

  def result
    @scorekeeper.result(@player_one, @player_two)
  end

  def reset_choices
    @players.each(&:reset_choice)
  end

end
