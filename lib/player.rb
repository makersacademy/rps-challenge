class Player
  attr_reader :name, :weapon
  def initialize(arg)
    @name = arg
  end

  def pick(arg)
    @weapon = arg
  end
end
