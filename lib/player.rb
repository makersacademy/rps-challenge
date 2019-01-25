class Player

  attr_reader :name, :moves

  # def self.create(name)
  #   @player = Player.new(name)
  # end
  #
  # def self.instance
  #   @player
  # end

  def initialize(name)
    @name = name
    @moves = []
  end

  def store_move(move)
    @moves << move
  end
end
