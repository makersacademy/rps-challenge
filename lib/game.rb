
class Game
  
  @@machine_pick = ""

  def self.machine_pick
    @@machine_pick = ["Rock", "Paper", "Scissors"].sample
  end

  # def winner
  #   if p1_pick == p2_pick
  #     "You Tie!"
  #   elsif p1_pick == "Rock" && p2_pick == "Scissors"
  #     "#{@player1.name} you win!"
  #   elsif p1_pick == "Paper" && p2_pick == "Rock"
  #     "#{@player1.name} you win!"
  #   elsif p1_pick == "Scissors" && p2_pick == "Paper"
  #     "#{@player1.name} you win!"
  #   else
  #     "The Machine wins!"
  #   end

  # end

end