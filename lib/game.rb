class Game

attr_reader :player

  def initialize(player)
    @player = player
  end

  def ai
    choice = ["Rock", "Paper", "Scissors"]
    choice[rand(choice.size)]
  end  

#   RPS Code here

end