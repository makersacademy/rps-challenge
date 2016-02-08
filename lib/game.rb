class Game 
  
  attr_reader :player_2
  
  CPU = ["Rock", "Paper", "Scissors"]
  
  def initialize(choice_1, choice_2=CPU.sample)
    @player_1 = choice_1
    @player_2 = choice_2
    @results  = { "Rock"     => "Scissors", 
                 "Scissors" => "Paper", 
                 "Paper"    => "Rock"
                }
  end 
  
  def result
    return "Draw!" if draw
    rps_check
  end
  
  
  private 
  
  attr_reader :results, :player_1

  def rps_check
    results.each_pair { |k, v| return 1 if (k == player_1 && v == player_2) }
    2
  end
  
  def draw
    player_1 == player_2
  end
  
end