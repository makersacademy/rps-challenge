class Computer

  attr_reader :samp

  def initalize(samp)
    @samp = samp
  end

  def random_choice
    num = [1, 2, 3]
    @samp = num.sample
    return "Rock" if @samp == 1
    return "Paper" if @samp == 2
    return "Scissors" if @samp == 3
  end
end
