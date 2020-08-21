class Player

  attr_reader :name, :choice

  def initialize(name)
    @name = name.capitalize
    @choice
  end

  def round_choice(option)
    @choice = option
  end

  def self.create(name)
    @instance_of_player = Player.new(name)
  end

  def self.instance
    @instance_of_player
  end
end
