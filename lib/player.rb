class Player

  attr_reader :name, :moves

  def initialize(name = 'Swifthands McDraw')
    @name = name
    @moves = ""
  end

  def move(move)
    @moves = move
  end

  def random_move
    @moves = ["Rock", "Paper", "Scissors"].sample
  end

  def rpssl_random
    @moves = ["Rock", "Paper", "Scissors", "Spock", "Lizard"].sample
  end

end
