class Game

  attr_accessor :player1, :computer

  WIN_HAND = {
    Rock: "Scissors",
    Scissors: "Paper",
    Paper: "Rock"
  }

  def initialize(player1, computer)
    @player1 = player1
    @computer = computer
  end

  def self.create(player1, computer)
    @game = Game.new(player1, computer)
  end

  def self.instance
    @game
  end

  def get_result
    @computer.random_select
    result = winner
    message(result)
  end

  private

  def winner
    return @player1 if @computer.choice == WIN_HAND[@player1.choice.to_sym]
    return @computer if @player1.choice == WIN_HAND[@computer.choice.to_sym]
    return "Draw" if @player1.choice == @computer.choice
  end

  def message(result)
    return "It's a Draw!" if result == "Draw"
    
    "#{result.name} Wins!!"
  end

end
