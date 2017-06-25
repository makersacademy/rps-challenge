require_relative "player.rb"
require_relative "cpu.rb"

class Game

  attr_reader :player, :cpu, :game_result

  RULES = {
    :rock     => {:rock => :draw, :paper => :lose, :scissors => :win},
    :paper    => {:rock => :win, :paper => :draw, :scissors => :lose},
    :scissors => {:rock => :lose, :paper => :win, :scissors => :draw}
  }

  def self.create(player, cpu)
    @game = Game.new(player, cpu)
  end

  def self.instance
    @game
  end

  def initialize(player = Player.new(name), cpu = Cpu.new)
    @player = player
    @cpu = cpu
  end

  def generate_result
    @game_result = result(player.move, cpu.move)
  end

  def result(player_move, cpu_move)
    RULES[player_move][cpu_move]
  end

end
