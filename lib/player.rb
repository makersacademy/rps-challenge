class Player

  attr_reader :name, :selection

  def initialize(name)
    @name = name
  end

  def selected(selection = nil)
    @selection = selection
  end

end
