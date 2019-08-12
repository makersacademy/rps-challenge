require_relative 'player'
require_relative 'computer'

class Game
  attr_reader :player, :opponent

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
    @past_totals = { win: 0, draw: 0, lose: 0 }
  end

  def self.create(player, opponent = Computer.new)
    @game = Game.new(player, opponent)
  end
  
  def self.instance
    @game
  end

  def result
    return :draw if draw?
    
    win? ? :win : :lose
  end
  
  def past_totals
    @past_totals[result] += 1
    @past_totals
  end

  private

  def draw?
    @player.choice.type == @opponent.choice.type
  end

  def win?
    @player.choice.beats?(@opponent.choice.type)
  end
end
