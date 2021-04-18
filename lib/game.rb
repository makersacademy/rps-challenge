require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer

  class << self
    attr_reader :instance

    def create(name)
      @instance = new(name)
    end
  end

  def initialize(name, player_class = Player, computer_class = Computer)
    @player_class   = player_class
    @player         = player_class.new(name)
    @computer_class = computer_class
    @computer       = computer_class.new
  end

  private

  attr_reader :player_class, :computer_class

end
