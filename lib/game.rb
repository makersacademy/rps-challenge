require 'game'

class Game
  attr_reader :current_turn

  describe Game do
    subject(:game) { described_class.new }
    let(:player_1) { double :player }
    let(:player_2) { double :player }

    def initialize(player_1)
      player_1 player_1
    end

    def player_1
      @player = player_1
    end
  end

end
