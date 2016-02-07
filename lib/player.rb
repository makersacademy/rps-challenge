class Player
  attr_reader :c_rps, :name

  def initialize(name = "computer")
    @name = name
    @c_rps = nil
  end

  def select_rps(value)
    @c_rps = value
  end
  
  def reset
    @c_rps = nil
  end

end
