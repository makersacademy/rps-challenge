class Player

  attr_reader :name
  attr_accessor :choice

  def initialize(name, choice=nil)
    @name = name
    @choice = choice
  end

end
