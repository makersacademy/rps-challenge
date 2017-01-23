class Computer

  attr_reader :choice

  def initialize(choice = nil)
    @choice = choice
  end

  def select_choice
    case chance
    when 1
      @choice = :rock
    when 2
      @choice = :paper
    when 3
      @choice = :scissors
    end
  end

  private

  def chance
    rand(1..3)
  end

end
