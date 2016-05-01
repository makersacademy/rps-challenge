#stores the choice given to it

class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def choice=(choice)
  	@choice = choice.upcase
  end

  def clear
  	@choice = nil
  end

end