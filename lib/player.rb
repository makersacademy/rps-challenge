class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name == '' ? 'J. Bloggs' : name
  end
end
