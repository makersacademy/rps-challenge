class Player

  attr_reader :name
  attr_accessor :selection

  def initialize(name)
    @name = name
    @selection = 'nothing'
  end

end
