class Game

  def self.create(choice)
    @game = Game.new(choice)
  end

  def self.instance
    @game
  end

  attr_reader :choice

  def initialize(choice)
    @choice = choice
  end





end
