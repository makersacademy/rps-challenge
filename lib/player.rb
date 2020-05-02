class Player
  attr_writer :choice
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

end
