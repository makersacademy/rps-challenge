class Computer

  def initialize
    @choices = ["rock", "paper", "scissors"]
  end

  def choice
    random = rand()
    if random < 0.3
      p random
      @choices[0]
    elsif random >= 0.3 && random <= 0.6
      p random
      @choices[1]
    else
      @choices[2]
    end
  end
end
