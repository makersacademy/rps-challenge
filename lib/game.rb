class Game

attr_reader :player

  def initialize(player)
    @player = player
  end

  def ai
    choice = ["Rock", "Paper", "Scissors"]
    choice[rand(choice.size)]
  end  

  def result
    return "#{player} won!" if player == "Rock" && ai == "Scissors"
    return "#{player} won!" if player == "Scissors" && ai == "Paper"
    return "#{player} won!" if player == "Paper" && ai == "Rock"
    return "Draw" if player == ai
    return "The Computer won!"
  end

end