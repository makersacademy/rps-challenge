class Player

  attr_accessor :name
  attr_reader :choice

  def rock
    @choice = :rock
  end

  def paper
    @choice = :paper
  end

  def scissors
    @choice = :scissors
  end

  def lizard
    @choice = :lizard
  end

  def spock
    @choice = :spock
  end

end
