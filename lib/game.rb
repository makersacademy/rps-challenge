
class Game

  def initialize
    # @computer = ["ROCK","PAPER","SCISSORS"].sample
  end

  def rps(player_choice, computer)
    return "DRAW" if player_choice == computer
    computer_win = [["ROCK", "PAPER"], ["PAPER", "SCISSORS"], ["SCISSORS", "ROCK"]]
    return computer_win.include?([player_choice, computer]) ? "Computer wins" : "Player wins"
  end

end
