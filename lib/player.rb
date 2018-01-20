class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def choose(move)
    validate(move)
    @move = move
  end

  private

  def validate(move)
    raise "Invalid move" unless [:rock, :paper, :scissors].include? move
  end
end
