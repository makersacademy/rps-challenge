class Player
  attr_writer :choice
  attr_reader :choice, :name
  def initialize(name)
    @name = name
  end
end
