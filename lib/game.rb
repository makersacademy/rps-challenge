class Game
  attr_reader :player, :computer

  WINS = { :Scissors => :Paper, :Rock => :Scissors, :Paper => :Rock }

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.create(player, computer = Computer.new)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def result
    if @player.move == WINS.key(@computer.move)
      "Win"
    elsif @player.move == @computer.move
      "Draw"
    else
      "Lose"
    end
  end

  def message
    result
    case result
    when "Win"
      "You win!"
    when "Lose"
      "You lose!"
    when "Draw"
      "Draw!"
    end
  end
end
