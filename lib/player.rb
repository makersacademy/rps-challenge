class Player
  require_relative 'game'

  attr_reader :name, :option

  def initialize(name, option)
    @name = name
    @option = option
    # I may need @game = Game.new here
  end

  def result
  end
end
