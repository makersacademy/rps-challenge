class Computer

  attr_reader :name, :choice, :name
  
  def initialize
    @choices = ["rock", "paper", "scissors"]
    @name = "Computer"
    @choice = nil
  end

  def choose
    random = rand()
    if random < 0.3
      random
      @choice = @choices[0]
    elsif random >= 0.3 && random <= 0.6
      random
      @choice = @choices[1]
    else
      @choice = @choices[2]
    end
  end
end
