require_relative 'player'
class Game
  attr_reader :player1, :move
  WEAPONS = ["Rock", "Paper", "Scissors"]
  RULES= {
      "Rock" => "Scissors",
      "Scissors" => "Paper",
      "Paper" => "Rock"
    }

  def initialize(player1, move)
    @player1 = player1
    @move = move
  end

  def self.create(player1, move)
    @game = Game.new(player1, move)
  end

  def shoot
    @shoot = WEAPONS.sample
  end

  def message
    win?
  end

 private

  def win?
    return  "No one wins and everyone is sad." if tie?
    return "#{player1.name} wins!" if RULES[@move] == @shoot
    return "Computer wins!"
  end

  def tie?
   @move == @shoot 
  end
end
