class Player
  attr_reader :name, :move

  def initialize(name)
    @name = name
  end

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player
  end

  def make_move(move)
    @move = move
  end

end
