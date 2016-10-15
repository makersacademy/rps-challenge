class Game
  attr_reader :choice

  class << self
    attr_accessor :current
  end

  def initialize
    @choice = ["Rock", "Paper", "Scissors"]
  end

end
