class Computer
  attr_reader :choice, :computer
  def initialize
    @choice = self.choose
  end

  def choose
    random = rand(0..2)
    if random == 0
      "Rock"
    elsif random == 1
      "Paper"
    else
      "Scissors"
    end
  end

end
