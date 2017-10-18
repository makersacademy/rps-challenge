
class Game

  def initialize(player, computer = Computer.new)
    @competition = [player.choice, computer.choice]
  end

  def rules
    [['Rock', 'Scissors'], ['Scissors', 'Paper'], ['Paper', 'Rock']]
  end

  def draw?
    @competition.first == @competition.last ? true : false
  end


end
