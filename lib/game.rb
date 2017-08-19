class Game
  attr_reader :player
  attr_accessor :choice

  def initialize(player)
    @player = player
  end

  def comp_choice(kernel = Kernel)
    number = kernel.rand(2)
    return "Rock" if number == 0
    return "Paper" if number == 1
    return "Scissors" if number == 2
  end

end
