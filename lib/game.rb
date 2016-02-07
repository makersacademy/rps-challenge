class Game 
  
  
  
  def initialize(choice)
    @choice = choice
    @cpu    = [:rock, :paper, :scissors].sample
    @results = { "Rock"     => :scissors, 
                 "Scissors" => :paper, 
                 "Paper"    => :rock
               }
  end
  
  def result
    return "Draw!" if draw
    rps_check
  end
  
  def cpu_choice
    cpu.capitalize.to_s
  end
  
  private 
  
  attr_reader :cpu, :choice, :results
  
  def rps_check
    results.each_pair { |k, v| return 1 if (k == choice && v == cpu) }
    2
  end
  
  def draw
    choice == cpu_choice
  end
  
end