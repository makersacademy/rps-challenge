require_relative './result_determiner'
require_relative './player'
require_relative './ai'
require 'set'

class Game

  WEAPONS = Ai::CHOICES.to_set

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def who_won
    check_names(player_1, player_2)
    check_weapons(player_1, player_2)
    ResultDeterminer.winning_name(player_1, player_2)
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  private

  def check_names(player_1, player_2)
    raise 'Each player must have a name' if player_1.name.empty? || player_2.name.empty?
  end

  def check_weapons(player_1, player_2)
    choices = [player_1.choice, player_2.choice].to_set
    raise 'That is not an accepted weapon' unless choices.subset?(WEAPONS)
  end

end
