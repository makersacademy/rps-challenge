class Player
  attr_reader :name, :attack_method

  def initialize(name)
    @name = name
  end

  def self.create(name)
    @player = Player.new(name)
  end

  def self.instance
    @player
  end

  def attack(attack_method)
    @attack_method = attack_method
  end
end
