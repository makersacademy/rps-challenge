require 'game'

describe Game do
  let(:player) {double :player}
  let(:game) {described_class.new}

  describe '#option' do
    it 'returns the selected option' do
      subject.option("rock")
      expect(subject.choice).to eq :rock
    end
  end

  describe '#win_lose_draw' do
    context 'player wins' do
      it 'returns "WON"' do
        allow(subject).to receive(:random_ai).and_return("scissors")
        expect(subject.win_lose_draw("rock")). to eq "WON"
      end
    end
    context 'player loses' do
      it 'returns "LOST"'
    end
  end

end
