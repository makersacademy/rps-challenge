
class Game

  def result
    return "The game is draw" if @player == @generator
    return "you win" if @test == "Scissors" && @generator == "Paper"
    return "you win" if @test == "Paper" && @generator == "Rock"
    return "you win" if @test == "Rock" && @generator == "Scissors"
    "you lose"
  end
end
