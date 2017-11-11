# Game class model layer
class Game

  def self.instance
    @instance
  end

  def self.create(value)
    @instance = value
  end
end
