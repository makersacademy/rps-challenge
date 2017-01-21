class Computer

  def initialize(choice = nil)
    @choice = choice
  end

  def chance
    rand(1..3)
  end

  def select_choice
    case chance
    when 1
      return :rock
    when 2
      return :paper
    when 3
      return :scissors
    end
  end

end
