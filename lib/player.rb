class Player
  attr_reader :name, :selection
  
  def initialize(name, selection)
    @name = name
    @selection = selection
  end
end