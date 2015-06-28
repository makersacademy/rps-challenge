class Game


  attr_reader :player_1_name

  def initialize (name = 'player_1')
    @player_1_name = name
  end


  def play (playerGuess)
    computerGuess = computer_guess
    game_winner(determine_winner(playerGuess, computerGuess))

  end

  def game_winner(result)
    if result == :win
      return player_1_name
    elsif result == :tied
      return 'tied'
    else
      return 'Computer'
    end
  end

  def computer_guess
    ["scissors", "paper", "rock"].sample
  end


  private

  def determine_winner (playerGuess, computerGuess)
    return :tied if playerGuess == computerGuess
    if playerGuess == "scissors"
      computerGuess == "rock" ? (return :lose) : (return :win)
    end
    if playerGuess == "paper"
      computerGuess == "scissors" ? (return :lose) : (return :win)
    end
    if playerGuess == "rock"
      computerGuess == "paper" ? (return :lose) : (return :win)
    end
  end


end
