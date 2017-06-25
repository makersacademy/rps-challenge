class Player

  attr_reader :name, :move

  def initialize(name)
    @name = name
    @move = nil
  end

  def rock
    @move = :rock
  end

  def paper
    @move = :paper
  end

  def scissors
    @move = :scissors
  end

end
