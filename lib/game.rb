class Game

attr_reader :player, :ai
# attr_accessor :ai

  def initialize(player)
    @player = player
    @ai = ["Rock", "Paper", "Scissors"].sample
  end

#   def ai
#     choice = ["Rock", "Paper", "Scissors"]
#     choice[rand(choice.size)]
#   end  

  def result
    return "You win!" if @player == "Rock" && @ai == "Scissors"
    return "You win!" if @player == "Scissors" && @ai == "Paper"
    return "You win!" if @player == "Paper" && @ai == "Rock"
    return "Draw" if @player == @ai
    return "The Computer won!"
  end

end