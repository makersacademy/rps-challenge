class Game

  attr_reader :player01, :player02

  def initialize(player01, player02)
    @player01 = player01
    @player02 = player02
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def outcome 

    opponent = @player02.weapon
    player = @player01.weapon
    
    if player == "Rock" && opponent == "Paper"
      "You lose!"
    elsif player == "Rock" && opponent == "Scissors"
      "You win!"
    elsif player == "Paper" && opponent == "Rock"
      "You win!"
    elsif player == "Paper" && opponent == "Scissors"
      "You lose!"
    elsif player == "Scissors" && opponent == "Paper"
      "You win!"
    elsif player == "Scissors" && opponent == "Rock"
      "You lose!"
    else
      "It's a draw!"
    end

  end
end
