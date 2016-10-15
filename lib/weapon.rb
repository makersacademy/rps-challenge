class Weapon

  attr_reader :choice

  def initialize
    @choice = nil
  end

  def choose_rock
    @choice = :rock
  end

  def choose_paper
    @choice = :paper
  end

  def choose_scissors
    @choice = :scissors
  end
  
end
