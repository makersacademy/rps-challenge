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
      it 'returns won.erb' do
        expect(subject.win_lose_draw(:rock)). to eq :won
      end
    end
    context 'player loses' do
      it 'returns "LOST"'
       expect(subject.win_lose_draw(:paper)). to eq :lost
    end
    context 'player draws' do
      it 'returns "DREW"'
       expect(subject.win_lose_draw(:paper)). to eq :drew
    end
  end

end
