class PC
  attr_reader :moves

  Weapon = [:Rock, :Paper, :Scissors]

  def initialize
    @move = Weapon
  end

  def pc_move
    @move.sample.to_s
  end
end