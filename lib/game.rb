class Game

  def initialize
    @random = random
  end

  def random
    @random = ["Rock", "Paper", "Scissors"].sample
  end

  def player_score
    'Rock'
  end

  def result1
    if player_score && @random == "Paper"
      puts "You won!"
    elsif player_score && @random == "Scissors"
      puts "You lost!"
    end
  end

end
