class Game

  def initialize(player, computer = Computer.new)
    @gameplay = [player.move, computer.move]
  end

  def beats
    [["paper", "rock"], ["rock", "scissors"], ["scissors", "paper"]]
  end

  def draw?
    @gameplay.first == @gameplay.last ? true : false
  end

  def win?
    beats.each do |winner_and_loser|
      winner_and_loser == @gameplay ? (return true) : (return false)
    end
  end
end
