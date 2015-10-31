class Player
 
  attr_reader :name, :hand

  def initialize name
    @name = name
    @hand = nil
  end

  def rock
    @hand = :rock
  end

  def paper
    @hand = :paper
  end

  def scissors
    @hand = :scissors
  end

  def clear_hand
    @hand = nil
  end

end