class RPS

attr_reader :win, :draw, :computer, :player, :score, :comp_score
#1 = rock
#2 = paper
#3 = scissors

def initialize(player)
  @player = player
  @score = 0
  @comp_score = 0
  @draw = false
  @win = false
end

  def compute
    @computer = Kernel.rand(1..3)
  end

  def rock
    if @computer == 1
      draww
    elsif @computer == 2
      lose
    elsif @computer == 3
      winn
    end
  end

  def paper
    if @computer == 1
      winn
    elsif @computer == 2
      draww
    elsif @computer == 3
      lose
    end
  end

  def scissors
    if @computer == 1
    lose
    elsif @computer == 2
      winn
    elsif @computer == 3
      draww
    end
  end

  def reset
    @win = false
    @draw = false
  end

private

  def winn
    @win = true
    @score += 1
  end

  def lose
    @win = false
    @comp_score += 1
  end

  def draww
    @draw = true
    @score += 1
    @comp_score += 1
  end

end
