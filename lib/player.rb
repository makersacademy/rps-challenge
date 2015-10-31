class Player
  attr_reader :name, :rounds_won, :selection

  def initialize(name)
    @name = name
    @rounds_won = []
    @selection = nil
  end

  def round_select(selection)
    @selection = selection
  end
end