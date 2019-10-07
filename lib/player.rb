class Player
  attr_reader :name, :choice
  def initialize(name)
    @name = name
    @choice = nil
  end

  def turn(choice)
    @choice = choice.to_sym
  end
      
end
