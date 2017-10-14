class Game

  attr_reader :p1, :p2

  def initialize(p1 = Player.new, p2 = Player.new)
    @p1 = p1
    @p2 = p2
  end

  def self.create(p1, p2)
    @game = Game.new(p1, p2)
  end

  def self.instance
    @game
  end

  def clash(p1_move, p2_move)
    if p1_move == "Rock" && p2_move == "Scissors"
      "Rock WINS!"
    elsif p1_move == "Scissors" && p2_move == "Paper"
      "Scissors WINS!"
    else
      "Paper WINS!"
    end
  end
end
