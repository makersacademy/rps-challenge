class Player
  attr_reader :name, :option
    
  def initialize(name)
    @name = name
  end

  def choice(option)
    @option = option
  end
end
