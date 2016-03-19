class Game
  # include Winning_combos

require_relative 'player'
require_relative 'computer'

  attr_reader :player, :computer

  def initialize(player:, computer:)
    @player = player
    @computer = computer
  end

  # def self.create(player:, computer:, player_class:Player, computer_class:Computer)
  #   player = player_class.new(name:player)
  #   computer = computer_class.new(name:computer)
  #   @instance = self.new(player:player, computer:computer)
  # end
  #
  # def self.instance
  #     @instance
  #   end

    def initialize(player, computer)
      @player = player
      @computer = computer
    end

    def self.create(player, computer)
      @game = Game.new(player, computer)
    end

    def self.instance
      @game ||= Game.new
    end
end
