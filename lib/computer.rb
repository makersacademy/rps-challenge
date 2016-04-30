class Computer
  def initialize
    @moves = ['Rock', 'Paper', 'Scissors']
  end

  def choice
    @moves[rand(3)]
  end
end
