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
    number = random_choice
    case number
    when 1
      choose_rock
    when 2
      choose_paper
    when 3
      choose_scissors
    end
  end

  private

  def random_choice
    rand(1..3)
  end

end
