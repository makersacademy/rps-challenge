class Computer
  attr_reader :attack_method, :name, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def self.create(name="Deep Blue")
    @computer = Computer.new(name)
  end

  def self.instance
    @computer
  end

  def get_attack
    @attack_method = ["Rock", "Paper", "Scissors"].sample
  end

  def add_score
    @score += 1
  end

end
