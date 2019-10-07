require_relative 'computer'

class Game

attr_reader :marketeer, :computer_choice
  def self.create(marketeer)
    @game = Game.new(marketeer)
  end

  def self.instance
    @game
  end

  def initialize(marketeer)
    @marketeer = marketeer
    @computer_choice = Computer.new.choice
  end

end
