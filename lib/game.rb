class Game
  attr_accessor :player1, :luigi
  
  WIN_HAND = {
    Rock: "Scissors",
    Scissors: "Paper",
    Paper: "Rock"
    }
  
  def initialize(player1, luigi)
    @player1 = player1
    @luigi = luigi
  end
  
  def self.create(player1, luigi)
    @game = Game.new(player1, luigi)
  end
  
  def self.instance
    @game
  end
  
  def the_result
    @luigi.random_select
    result = winner
    message(result)
  end
  
  private
  
  def winner
    return @player1 if @luigi.choice == WIN_HAND[@player1.choice.to_sym]
    return @luigi if @player1.choice == WIN_HAND[@luigi.choice.to_sym]
    return "Draw" if @player1.choice == @luigi.choice
  end
  
  def message(result)
    return "It's a Draw!" if result == "Draw"

    "#{result.name} Wins!!"
  end
end
