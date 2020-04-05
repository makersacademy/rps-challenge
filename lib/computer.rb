class Computer
  attr_reader :name, :weapon
  def initialize
    @name = "Computer"
  end
  def pick(arg)
    @weapon = arg
  end
end

