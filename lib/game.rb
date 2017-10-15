class Game

  attr_reader :p1, :p2, :move, :result

  def initialize(p1 = Player.new, p2 = Player.new)
    @p1 = p1
    @p2 = p2
    @move = %w(Rock Paper Scissors).sample
  end

  def self.create(p1, p2)
    @game = Game.new(p1, p2)
  end

  def self.instance
    @game
  end

  def clash(p1_move, p2_move)
    if !%w(Rock Paper Scissors).include? p1_move.capitalize
      @result = "That's not right! Give it a proper go.."
    elsif p1_move == p2_move
      @result = "Draw! Try again!"
    elsif p1_move == "Rock" && p2_move == "Scissors" # || p1_move == "Scissors" && p2_move == "Rock"
      @result = "#{@p1.name} WINS!"
    elsif p1_move == "Scissors" && p2_move == "Paper" # || p1_move == "Paper" && p2_move == "Scissors"
      @result = "#{@p1.name} WINS!"
    elsif p1_move == "Paper" && p2_move == "Rock" # || p1_move == "Rock" && p2_move == "Paper"
      @result = "#{@p1.name} WINS!"
    else
      @result = "#{@p1.name} loses :("
    end
  end
end
