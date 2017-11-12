class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    if @computer.choice == @player.choice
      draw
    elsif WIN_RULES[@player.choice.to_sym] == @computer.choice.to_sym
      win
    else
      lose
    end
  end

  private
  WIN_RULES = { Rock: :Scissor, Paper: :Rock, Scissor: :Paper }

  def draw
    'Draw'
  end

  def win
    @player.score += 1
    'You win'
  end

  def lose
    @computer.score += 1
    'You lose'
  end

end
