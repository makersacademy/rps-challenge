require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }

  describe '#initialize' do
    it 'starts with a new #player' do
      expect(game.player).to eq player
    end

    it 'starts with a #computer player' do
      expect(game.computer).to eq computer
    end
  end
end
