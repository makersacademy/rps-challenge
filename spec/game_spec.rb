require 'game'

describe Game do
  let(:player) {double :player}
  let(:game) {described_class.new(:rock)}

  describe '#option' do
    it 'returns the selected option' do
      expect(game.option).to eq :rock
    end
  end
end
