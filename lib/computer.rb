class Computer
  attr_reader :name, :weapon

  def initialize
    @name = 'Computer'
  end

  def weapon_choice(moves)
    @weapon = moves.map { |k, _v|  k }.sample
  end
end
