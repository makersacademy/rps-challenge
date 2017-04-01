class Player

  attr_reader :name, :random_attack

  def initialize(name)
    @name = name
  end

  def paper?
    true
  end

  def random_attack
      "Paper"
  end
end