
class Game

  def initialize(player, computer = Computer.new)
    @competition = [player.choice, computer.choice]
  end

  def rules
    [['Rock', 'Scissors'], ['Scissors', 'Paper'], ['Paper', 'Rock']]
  end

  def result
    if player_win?
      :win
    elsif draw?
      :draw
    else
      :lose
    end
  end

private

  def draw?
    @competition.first == @competition.last ? true : false
  end

  def player_win?
    rules.each do |wining_vs_losing|
      wining_vs_losing == @competition ? (return true) : (return false)
    end
  end


end
