class RpsGame

  attr_reader :outcome

  def initialize

    @win_matrix = {
      "Paper" => { "Scissors" => :lose, "Paper" => :tie, "Rock" => :win },
      "Rock" => { "Scissors" => :win, "Paper" => :lose, "Rock" => :tie },  
      "Scissors" => { "Scissors" => :tie, "Paper" => :win, "Rock" => :lose }
    }

    @outcome = ""

  end

  def play(move)

    result = @win_matrix[move][computer_move]

    if result == :win
      win
    elsif result == :tie
      tie
    else
      lose
    end

  end

  def computer_move

    ["Rock", "Paper", "Scissors"].sample

  end

  def win

    @outcome = "You win this time, human"

  end

  def tie

    @outcome = "It's a draw"

  end

  def lose

    @outcome = "You suffer a humiliating defeat"

  end

end
