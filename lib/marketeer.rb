class Marketeer
  # attr_reader :name
  def initialize(name)
    @marketeer = name
  end

  def name
    @marketeer
  end

  def move
    "rock"
  end
end
