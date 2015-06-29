class Game


  attr_reader :player_1_name, :player_2_name, :lastComputerGuess

  def initialize (name = 'player_1', name2 = 'Computer')
    @player_1_name = name
    @player_2_name = name2
  end


  def play_1_player (player1Guess)
    player2Guess = computer_guess
    @lastComputerGuess = player2Guess
    game_winner(determine_winner(player1Guess, player2Guess))
  end

  def play_2_player (player1Guess, player2Guess)
    game_winner(determine_winner(player1Guess, player2Guess))
  end


  def game_winner(result)
    if result == :win
      return player_1_name
    elsif result == :tied
      return 'tied'
    else
      return player_2_name
    end
  end

  def computer_guess
    ["scissors", "paper", "rock"].sample
  end


  private

  def determine_winner (player1Guess, player2Guess)
    return :tied if player1Guess == player2Guess
    if player1Guess == "scissors"
      player2Guess == "rock" ? (return :lose) : (return :win)
    end
    if player1Guess == "paper"
      player2Guess == "scissors" ? (return :lose) : (return :win)
    end
    if player1Guess == "rock"
      player2Guess == "paper" ? (return :lose) : (return :win)
    end
  end


end
