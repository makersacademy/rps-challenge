class Computer
  def initialize rules
    @rules = rules
  end

  def move
    @rules.moves.sample
  end
end