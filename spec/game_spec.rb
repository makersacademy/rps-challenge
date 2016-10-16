require 'game'

describe Game do

  let(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player, name: 'Hilary') }
  let(:player_2) { double(:player, name: 'Trump') }

  describe '#initialize' do
    it 'accepts player 1' do
      expect(game.player_1.name).to eq 'Hilary'
    end

    it 'accepts player 2' do
      expect(game.player_2.name).to eq 'Trump'
    end
  end
end
