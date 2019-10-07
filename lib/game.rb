require_relative 'player'
class Game
  attr_reader :player1, :move

  def initialize(player1, move)
    @player1 = player1
    @move = move
  end

  def self.create(player1, move)
    @game = Game.new(player1, move)
  end

  def shoot
    @shoot = ["Rock", "Paper", "Scissors"].sample
  end

  def message
    win?
  end

    private

  def win?
    case 
    when @move == "Rock" && @shoot == "Paper"
      "Computer wins!"
    when @move == "Paper" && @shoot == "Scissors"
      "Computer wins!"
    when @move == "Scissors" && @shoot == "Rock"
      "Computer wins!"
    when @move == "Paper" && @shoot == "Rock"
      "#{player1.name} wins!"
    when @move == "Rock" && @shoot == "Scissors"
      "#{player1.name} wins!"
    when @move == "Scissors" && @shoot == "Paper"
      "#{player1.name} wins!"
    else
      "No one wins and everyone is sad."
    end
  end
end
