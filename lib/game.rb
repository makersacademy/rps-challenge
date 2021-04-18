require_relative './player.rb'

class Game
  attr_reader :player1, :computer

  def initialize(player1 = Player.new, computer = Player.new)
    @player1 = player1
    @computer = computer
  end

  def move
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def playgame(player1, computer)
    @results = {
      'rock/rock' => "It's a tie",
      'rock/paper' => "Computer Wins",
      'rock/scissors' => "You Win",
      'paper/paper' => "It's a tie",
      'paper/rock' => "You Win",
      'paper/scissors' => "Computer Wins",
      'scissors/scissors' => "It's a tie",
      'scissors/rock' => "Computer Wins",
      'scissors/paper' => "Computer Wins"
    }
    @results["#{player1}/#{computer}"]
  end

end