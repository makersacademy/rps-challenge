class Game

attr_reader :move, :counter, :game_result

  def initialize(move)
    @move = move
  end

  def random_counter_move
    @counter = ["Rock", "Paper", "Scissors"].sample
  end

  def result(move, counter)
      if (move == counter)
       @game_result = "It's a draw"
      elsif (move == "Rock" && counter == "Scissors")
       @game_result = "computer choice is: " + counter + ", you win! :)"
      elsif (move == "Rock" && counter == "Paper")
       @game_result = "computer choice is: " + counter + ", computer wins :("
      elsif (move == "Paper" && counter == "Scissors")
       @game_result = "computer choice is: " + counter + ", computer wins :("
      elsif (move == "Paper" && counter == "Rock")
       @game_result = "computer choice is: " + counter + ", you win! :)"
      elsif (move == "Scissors" && counter == "Rock")
       @game_result = "computer choice is: " + counter + ", computer wins :("
      elsif (move == "Scissors" && counter == "Paper")
       @game_result = "computer choice is: " + counter + ", you win! :)"
      end
  end

end
