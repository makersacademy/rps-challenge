class Player

  attr_accessor :score
  attr_reader :name, :choice

  def initialize(player)
    @name = player[:name]
    @choice = player[:rps]
  end

end
