class Player

  attr_reader :name, :computer
  alias_method :is_computer?, :computer

  def initialize name
    @name = name
    @computer = false
  end
end
