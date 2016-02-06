class Player
  attr_reader :c_rps, :name

  def initialize(name = "computer")
    @name = name
    @c_rps = nil
  end

  def sel_rock
    @c_rps = :rock
  end

  def sel_paper
    @c_rps = :paper
  end

  def sel_scissors
    @c_rps = :scissors
  end

  def reset
    @c_rps = nil
  end

end
