class Game
  
  @@machine_pick = ""

  def self.machine_pick
    @@machine_pick = ["Rock", "Paper", "Scissors"].sample
  end

end
