class Game

  attr_reader :option

  def initialize(option)
    @option = option
  end

  def self.create(option)
    @game = Game.new(option)
  end

  def self.option
    @option
  end

end
