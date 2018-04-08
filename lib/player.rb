class Player
attr_reader :name

MOVES = [:rock, :paper, :scissors]

  def initialize(name)
    @name = name
    # @selection = selection
  end

  def move_check?(selection)
    selection = downcase_text_to_sym(selection)
    MOVES.include?(selection)
  end

  def downcase_text_to_sym(selection)
    selection.downcase.to_sym
  end

  # def valid_move?
  #   @selection
  # end
end
