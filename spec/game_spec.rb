require 'game'

describe Game do
subject(:game) { described_class.new(dave, hal_9000) }
let(:dave) { double(:dave) }
let(:hal_9000) { double(:hal_9000) }

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq(dave)
    end
  end

  describe '#player2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq(hal_9000)
    end
  end

end
