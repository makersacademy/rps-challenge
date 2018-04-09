class Player
attr_reader :name, :move

MOVES = [:rock, :paper, :scissors]

  def initialize(name)
    @name = name
    @move = nil
  end

  def move
    @move
  end

  def move_check?(selection)
    @move = downcase_text_to_sym(selection)
    MOVES.include?(@move)
  end

  def downcase_text_to_sym(selection)
    selection.downcase.to_sym
  end
end
