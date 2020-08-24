class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name.capitalize
  end

  def round_choice(option)
    @choice = option
  end

end
