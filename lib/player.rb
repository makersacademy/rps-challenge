class Player
  attr_reader :name

  def initialize(name)
    raise ArgumentError, 'name must be a string' unless name.is_a? String
    raise ArgumentError, 'name must not be empty string' if name.empty?

    @name = name
  end

  def self.instance
    @player
  end

  def self.create(name)
    @player = Player.new(name)
  end
end
