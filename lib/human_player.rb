class HumanPlayer

  attr_accessor :weapon
  attr_reader :name

  def initialize(name)
    @name = name
    @weapon = nil
  end
end
