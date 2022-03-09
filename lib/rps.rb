class Game
  attr_reader :count

  def initialize
    @count = 0
  end

  def print
    "This is working"
  end

  def self.instance
    @game ||= game.new
  end
end