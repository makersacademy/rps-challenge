class Player
  attr_reader :name, :selection

  def initialize(name)
    @name = name
    @selection = nil
  end

  def round_select(selection)
    @selection = selection
  end
end