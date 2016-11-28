class Player

  attr_reader :name, :choice

  def initialize( name )
    @name = name
    @choice
  end

  def choose( choice )
    @choice = choice
  end

end
