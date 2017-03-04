class Player

  attr_reader :name, :selection

  def initialize(name)
    @name = name
  end

  def selected(selection)
    @selection = selection
  end

end
