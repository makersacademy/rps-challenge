class Player
  attr_reader :name
  attr_accessor :weapon
  def initialize(arg)
    @name = arg
  end

  def pick(arg)
    @weapon = arg
  end
end
