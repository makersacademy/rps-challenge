class Cpu
  attr_reader :selection

  def initialize
    @selection = cpu_choice
  end

  private

  def cpu_choice
    option = rand(3)
    case option
    when 0
      :rock
    when 1
      :paper
    when 2
      :scissors
    end
  end
end
