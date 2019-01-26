class Player
  attr_reader :name, :move
def initialize(name)
  @name = name
  @move = nil
end
def choose_move(move)
  raise("Invalid Move") unless [:rock,:paper,:scissors].include?(move)
  @move = move
end
end
