class Player
  attr_reader :name, :choice
  def initialize(name)
    @name = name
    @choice = ""
  end

  def assign_choice(param)
    @choice = param
  end
end
