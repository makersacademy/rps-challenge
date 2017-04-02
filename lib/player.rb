class Player
  attr_reader :name, :attack_method, :score

  def initialize(name)
    @name = name
    @score = 0
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

  def add_score
    @score += 1
  end
end
