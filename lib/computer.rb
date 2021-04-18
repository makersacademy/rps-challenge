class Computer
  CHOICE = [:rock, :paper, :scissors, :lizard, :spock]

  def initialize
    @cpu_weapon = CHOICE.sample
  end

  def cpu_pick
    @cpu_weapon
  end
 
end