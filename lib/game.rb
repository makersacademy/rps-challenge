require_relative 'computer'
require_relative 'player'

CHOICES = [:rock, :paper, :scissors]

class Game

  def self.create(player_1,player_2)
    @game = Game.new(player_1,player_2)
  end

  def self.instance
    @game
  end

  attr_reader :player_1, :player_2

  def initialize(player_1,player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def result
    return "draw" if draw?
    return "lose" if lose?
    "win"
  end

  private

  def draw?
    CHOICES[player_1.choice_index] == CHOICES[player_2.choice_index]
  end

  def lose?
    CHOICES[player_1.choice_index] == CHOICES[(player_2.choice_index) -1]
  end

end
