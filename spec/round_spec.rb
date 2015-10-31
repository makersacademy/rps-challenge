require 'round'

describe Round do
  let(:player_1) {double :player, name: 'Andy', selection: 'Rock' }
  let(:player_2) {double :player, name: 'Leigh-Ann', selection: 'Scissors' }

  subject(:round) { described_class.new(player_1, player_2) }
  context 'on initialize' do
    it 'should have input from two players' do
      expect(round.p1).not_to be_nil
    end
    it 'should have input from two players' do
      expect(round.p2).not_to be_nil
    end
  end

  describe '#find_winner' do
    it 'should calculate the correct winner' do
      expect(round.find_winner).to eq 'Andy'
    end
  end

  describe '#draw?' do
    it 'should identify when it is a draw' do
      allow(player_1).to receive(:selection).and_return('Paper')
      allow(player_2).to receive(:selection).and_return('Paper')
      expect(round.draw?).to eq true
    end
  end
end