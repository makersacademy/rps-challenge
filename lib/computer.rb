class Computer
  attr_reader :name

  def initialize(name = 'computer')
    @name = name
    @moves = ["Rock", "Paper", "Scissors"]
  end

  def computer_move
    p rand
    @moves[rand(0..2)]
  end
end
