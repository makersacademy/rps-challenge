class Players

  attr_reader :name1, :name2
  attr_accessor :move1, :move2

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
  end

  def self.create(name1, name2)
    @turn = Players.new(name1, name2)
  end

  def self.instance
    @turn
  end
end
