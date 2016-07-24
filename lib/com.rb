class Com
  attr_reader :name, :weapon
  def initialize
    @name = 'Com'
  end

  def choose
  @weapon = rand(0..4)
  end
end
