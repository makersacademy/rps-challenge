class Player

  attr_reader :name
  attr_accessor :option

  def initialize(name)
    @name = name
    @option = nil
  end
end
