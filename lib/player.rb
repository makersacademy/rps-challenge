class Player
  attr_reader :name, :p_move

  def initialize(name = 'Gandalf')
    @name = name
    @p_move = p_move
  end

  def move(move_choice)
    @p_move = move_choice
  end
end

