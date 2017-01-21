class Player

  attr_reader :name, :choice

  def initialize(name, choice="Rock")
    @name = name
    @choice = choice
  end

end
