class Player

  attr_reader :name, :wins
  attr_accessor :selection

  def initialize(name)
    @name = name
    @wins = 0
    @selection = nil
  end

end
