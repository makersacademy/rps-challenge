class Player
  attr_reader :name, :weapon

  def initialize(name)
    raise "Please enter name" if name.empty?
    @name = name
  end

  def choose(choice)
    @weapon = choice
  end
end
