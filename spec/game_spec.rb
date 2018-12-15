require 'game'

describe Game do
  subject(:game) { described_class.new(challenger: challenger, computer: computer) }
  let(:challenger) { double :challenger }
  let(:computer) { double :computer }
  let(:move) { double :move }

  describe '#result' do
    context 'challenger: rock, computer: paper' do
      it 'returns result for challenger as boolean' do
        allow(challenger).to receive(:choice).and_return(:rock)
        allow(computer).to receive(:choice).and_return(:paper)
        expect(game.challenger_win?).to eq(false)
      end
    end
  end
end
