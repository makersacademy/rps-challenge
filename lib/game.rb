require './lib/winner'

class Game
  attr_reader :round, :winner

  def self.instance(player, computer)
    @game ||= Game.new(player, computer)
  end

  def initialize(player, computer)
    @player = player
    @computer = computer
    @round = 0
  end

  def play
    @winner = determine_winner
    add_score
    increment_round
  end

  def reset
    @player.reset
    @computer.reset
    reset_game
  end

  private

  def determine_winner
    Winner.new(@player, @computer).determine
  end

  def add_score
    @winner.increment_score unless @winner.nil?
  end

  def increment_round
    @round += 1
  end

  def reset_game
    @round = 0
    @winner = nil
  end
end