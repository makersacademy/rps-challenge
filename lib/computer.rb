class Computer

  attr_reader :choice, :name

  def initialize
    @name = "Computer"
    @wins = 0
    @choice = update_rand
  end

  MOVES = %w[rock paper scissors].sample

  def update_rand(*)
    move_index = Kernel.rand(Game::MOVES.length)
    @choice = Game::MOVES[move_index]
  end
end
