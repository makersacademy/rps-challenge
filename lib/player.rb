class Player

  attr_reader :name
  @@player = Player.new

  def initialize(name)
    @name = name
  end


end
