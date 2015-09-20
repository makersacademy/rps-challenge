class ComputerPlayer

  attr_reader :wins

  def initialize
    @wins = 0
  end

  def name
    "Computer"
  end

  def return_throw
    [:rock, :paper, :scissors].sample
  end

  def win!
    @wins +=1
  end

end