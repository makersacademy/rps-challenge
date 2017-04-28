class Player

  attr_reader :name
  attr_accessor :choice

  def initialize(name = nil)
    @name = name
  end

end
