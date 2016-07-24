class Com
  attr_reader :name, :weapon
  def initialize
    @name = 'Com'
  end

  def choose
  @weapon = Kernel.rand(1..3)
  end
end
