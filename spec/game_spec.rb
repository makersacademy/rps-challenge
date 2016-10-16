require 'game'

describe Game do

  let(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player, player_1: 'Hilary') }
  let(:player_2) { double(:player, player_2: 'Trump') }

  describe '#initialize' do
    it 'accepts player 1' do
      expect(game.player_1).to eq 'Hilary'
    end

    it 'accepts player 2' do
      expect(game.player_2).to eq 'Trump'
    end
  end
end
