require_relative './player.rb'

class Game
  attr_reader :player1, :computer, :computer_move

  def initialize(player1 = Player.new, computer = Player.new)
    @player1 = player1
    @computer = computer
  end

  def computer_move
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def playgame(player1, computer)
    @results = {
      'Rock/Rock' => "It's a tie",
      'Rock/Paper' => "Computer Wins",
      'Rock/Scissors' => "You Win",
      'Paper/Paper' => "It's a tie",
      'Paper/Rock' => "You Win",
      'Paper/Scissors' => "Computer Wins",
      'Scissors/Scissors' => "It's a tie",
      'Scissors/Rock' => "Computer Wins",
      'Scissors/Paper' => "Computer Wins"
    }
    return @results["#{player1}/#{computer}"]
  end
end

# def winner?
#   # if @results == "You Win"
#   #   @player1.score += 10 
#   # elsif @results == "Computer Wins"
#   #   @computer.score += 10
#   # end
# end
