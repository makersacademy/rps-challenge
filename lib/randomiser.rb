class Randomiser

  attr_reader :num

  def initialize
    @num = ''
  end

  def computer
    random_number
    if @num == 0
      "rock"
    elsif @num == 1
      "paper"
    elsif @num == 2
      "scissors"
    end
  end

  private

  def random_number
    @num = rand(3)
  end


end
