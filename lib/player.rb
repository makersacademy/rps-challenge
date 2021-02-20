class Player
  attr_reader :name, :choice

  def initialize(name = 'Computer')
    @name = name
  end

  def set_choice(value)
    @choice = value
  end
end
