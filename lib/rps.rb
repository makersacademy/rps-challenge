class RPS

  def initialize(player)
    @game_options = {
      1 => "Rock",
      2 => "Paper",
      3 => "Scissors"
    }

    @player= player
    
    @player_choice = player.user_choice #this was sent to the game

    @computer_choice = nil #this get's set up here for the moment

  end

  def play
    @game_options[rand(1..3)]
  end

  def get_player_choice
    @player_choice
  end

  def get_computer_choice
    @computer_choice = play
  end

# - Rock beats Scissors
# - Scissors beats Paper
# - Paper beats Rock

  def compute_winner
    player1 = @player_choice
    player2 = @computer_choice

    if player1 == player2
      result = "Draw"
    elsif player1 == "Rock" && player2 == "Scissors"
      result = "Player 1: Rock beats Scissors"
    elsif player1 == "Scissors" && player2 == "Paper"
      result = "Player1: Scissors beats Paper"
    elsif player1 == "Paper" && player2 == "Rock"
      result = "Player1: Scissors beats Paper"
    else
      result = "Player2"
    end
    result
  end

end

