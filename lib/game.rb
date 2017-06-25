require_relative "player"

class Game

  attr_reader :player

  def self.create(player, cpu)
    @game = Game.new(player, cpu)
  end

  def self.instance
    @game
  end

  def initialize(player, cpu)
    @player = player
    @cpu = cpu
    @rules = {
      :rock     => {:rock => :draw, :paper => :lose, :scissors => :win},
      :paper    => {:rock => :win, :paper => :draw, :scissors => :lose},
      :scissors => {:rock => :lose, :paper => :win, :scissors => :draw}
    }
  end

  def result(player_move, cpu_move)
    @rules[player_move][cpu_move]
  end

end
