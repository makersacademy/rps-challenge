class Player

  attr_reader :name

  def initialize(name = 'Unknown Player')
    @name = name
  end

  def set_name(name)
    @name = name
  end



end