require_relative './results'

class Game

  attr_reader :name, :results

  def initialize(name)
    @name = name
    @results = Results.new
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

end
