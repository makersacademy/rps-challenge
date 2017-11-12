class Game

  attr_reader :player, :computer, :judge

  def initialize(player, computer = Computer.new, judge = Judge.new)
    @player = player
    @computer = computer
    @judge = judge
  end

  def result(p_weapon, c_weapon)
    @judge.call(p_weapon, c_weapon)
  end

  def self.store(game)
    @game = game
  end

  def self.show
    @game
  end

end
