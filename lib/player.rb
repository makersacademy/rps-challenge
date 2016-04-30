class Player

  attr_reader :lives

  def initialize(name)
    @name = name
    @lives = 1
  end

  def name
    @name
  end


end
