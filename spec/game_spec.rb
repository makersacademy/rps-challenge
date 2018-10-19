require 'game'

describe Game do

  let(:game) { Game.new('jane') }

  describe '#initialize' do
    it 'initializes with a player' do
      expect(game.player_1).to eq 'jane'
    end
  end

end
