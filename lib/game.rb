class Game
  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  attr_reader :player, :cpu

  def initialize(player, cpu = CPU.new)
    @player = player
    @cpu = cpu
  end

  def play(player_choice)
    @player.choose(player_choice)
    @cpu.choose
  end
end