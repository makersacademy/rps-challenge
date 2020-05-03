class Player
  attr_writer :choice
  attr_reader :name

  def initialize(name)
    @name = name
  end

end
