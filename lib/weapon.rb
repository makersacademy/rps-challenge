class Weapon

  attr_reader :choice, :won

  def initialize
    @choice = nil
    @won = nil
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

  def computer_choice
    @choice = [:rock, :paper, :scissors].sample
  end

  def set_win
    @won = true
  end

  def set_lose
    @won = false
  end

  def set_tie
    @won = :tie
  end

end
