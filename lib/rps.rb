class RPS

attr_reader :win, :draw, :computer, :player
#1 = rock
#2 = paper
#3 = scissors

def initialize(player)
  @player = player
end

  def compute
    @computer = rand(1..3)
  end

  def rock
    if @computer == 1
      @draw = true
    elsif @computer == 2
      @win = false
    elsif @computer == 3
      @win = true
    end
  end

  def paper
    if @computer == 1
      @win = true
    elsif @computer == 2
      @draw = true
    elsif @computer == 3
      @win = false
    end
  end

  def scissors
    if @computer == 1
      @win = false
    elsif @computer == 2
      @win = true
    elsif @computer == 3
      @draw = true
    end
  end

end
