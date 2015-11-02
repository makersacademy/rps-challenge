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
    if draw_calc then @outcome = "Draw"
    else winner_looser
    end
  end

  private

  def winner_looser
    choices = [@player.choice, @computer.choice]
    @wins.each do |wins|
      return @outcome = "You Win!" if wins[0].match(choices[0]) && wins[1].match(choices[1])
    end
    @outcome = "You Loose!"
  end

  def draw_calc
    @player.choice.match(@computer.choice)
  end
  
end
