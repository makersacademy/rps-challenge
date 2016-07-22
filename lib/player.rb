class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.instance
    @name
  end

end
