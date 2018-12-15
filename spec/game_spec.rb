require 'game'

describe Game do
  subject(:game) { described_class.new(challenger, computer) }
  let(:challenger) { double :challenger, name: 'Link' }
  let(:computer) { double :computer, name: :Computer }

  describe '#result' do
    context 'challenger: rock, computer: paper' do
      it 'returns result for challenger as boolean' do
        allow(challenger).to receive(:choice).and_return(:rock)
        allow(computer).to receive(:choice).and_return(:paper)
        expect(game.challenger_win?).to eq(false)
      end
    end

    context 'challenger: paper, computer: scissors' do
      it 'returns result for challenger as boolean' do
        allow(challenger).to receive(:choice).and_return(:paper)
        allow(computer).to receive(:choice).and_return(:scissors)
        expect(game.challenger_win?).to eq(false)
      end
    end

    context 'challenger: scissors, computer: rock' do
      it 'returns result for challenger as boolean' do
        allow(challenger).to receive(:choice).and_return(:scissors)
        allow(computer).to receive(:choice).and_return(:rock)
        expect(game.challenger_win?).to eq(false)
      end
    end

    context 'challenger: rock, computer: scissors' do
      it 'returns result for challenger as boolean' do
        allow(challenger).to receive(:choice).and_return(:rock)
        allow(computer).to receive(:choice).and_return(:scissors)
        expect(game.challenger_win?).to eq(true)
      end
    end

  end
end
