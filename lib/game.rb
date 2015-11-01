class Game
  attr_reader :outcome, :computer, :player
  def initialize(player, computer)
    @player = player
    @computer = computer
    @wins = [['Rock','Scissors'],
    ['Paper', 'Rock'],
    ['Scissors', 'Paper']]
  end

  def calculate
    case
    when @player.choice.match(@computer.choice) then @outcome = "Draw"
    else winner_looser
    end
  end

  private
  def winner_looser
    array = [@player.choice, @computer.choice]
    @wins.each do |wins|
      return @outcome = "You Win!" if wins[0].match(array[0]) && wins[1].match(array[1])
    end
    @outcome = "You Loose!"
  end
end
