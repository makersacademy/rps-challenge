class Player
  attr_reader :name
  attr_accessor :choice

  def initialize(name = 'R2D2')
    @name = name
  end

end
