require_relative "scorekeeper"

class Game
  def self.create
    @current_game = Game.new
  end

  class << self
    attr_reader :current_game
  end
end

class Game
  attr_accessor :player_one, :player_two, :mode

  def initialize(player_one = nil, player_two = nil,
     scorekeeper = Scorekeeper.new)
    @player_one, @player_two, @scorekeeper = player_one, player_two, scorekeeper
  end

  def players
    [@player_one, @player_two]
  end

  def chooser
    players.find { |player| !player.has_chosen? }
  end

  def complete?
    players.all?(&:has_chosen?)
  end

  def result
    @scorekeeper.result(@player_one, @player_two)
  end

  def reset_choices
    players.each(&:reset_choice)
  end

end
