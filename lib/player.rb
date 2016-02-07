class Player

  attr_reader :name, :selection

  def initialize(name = 'computer')
    @name = name
    @selection = nil
  end

  def choose_rock
    @selection = :rock
  end

  def choose_paper
    @selection = :paper
  end

  def choose_scissors
    @selection = :scissors
  end

  def reset
    @selection == nil
  end 

end
