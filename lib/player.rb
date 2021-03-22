class Player 
  attr_reader :name, :selection
  def initialize(name)
    @name = name
  end

  def update_selection(selection)
    @selection = selection
  end

end
