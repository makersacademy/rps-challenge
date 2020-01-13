class Player

  attr_reader :name

  def initialize(name)
    @name = name || Player.new(name)
    @wins = 2
  end

  def self.create(name)
    @name = Player.new(name)
  end

  def self.instance
    @name
  end
end
