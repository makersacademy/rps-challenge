class Player
  attr_reader :choice, :name
  
  def initialize(name)
    @name = name
  end

  def choice=(choice)
    @choice = choice.downcase.to_sym
  end
end
