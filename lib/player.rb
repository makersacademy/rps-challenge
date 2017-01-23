class Player
  attr_reader :name
  attr_accessor :weapon
  def initialize(name = "Player 1")
    @name = name
    @weapon = nil
  end

  def played?
    @weapon != nil
  end

end
