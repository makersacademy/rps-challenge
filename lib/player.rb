class Player
  attr_reader :selection, :name
  def initialize(selection, name)
    @selection = selection[0]
    @name = name
  end
end
