class Player

  attr_accessor :name
  attr_reader :choice

  def initialize(name, list_of_moves)
    @list = list_of_moves
    @name = name
  end

  def choose(weapon)
    @list.include?(weapon.to_sym) ? @choice = weapon.to_sym : @choice = 'No known weapon'
  end

end
