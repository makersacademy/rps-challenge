class Player

  attr_reader :name, :choice

  def initialize(name, choice)
    @name = name
    @choice = choice.downcase.to_sym
  end


end
