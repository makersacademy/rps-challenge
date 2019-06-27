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
    
    return "You lose!" if player == "Rock" && opponent == "Paper"
    return "You win!" if player == "Rock" && opponent == "Scissors"
    return "You win!" if player == "Paper" && opponent == "Rock"
    return "You lose!" if player == "Paper" && opponent == "Scissors"
    return "You win!" if player == "Scissors" && opponent == "Paper"
    return "You lose!" if player == "Scissors" && opponent == "Rock"
      
    return "It's a draw!" if player == opponent
    
  end
end
