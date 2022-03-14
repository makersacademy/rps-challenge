class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choose_attack(option)
    @choice = option.to_sym
  end
end
