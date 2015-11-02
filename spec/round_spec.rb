require 'round'

describe Round do
  let(:player_1) {double :player, name: 'Andy', selection: :rock }
  let(:player_2) {double :player, name: 'Leigh-Ann', selection: :scissors }

  subject(:round) { described_class.new(player_1, player_2) }
  context 'on initialize' do
    it 'should have input from two players' do
      expect(round.p1).not_to be_nil
    end
    it 'should have input from two players' do
      expect(round.p2).not_to be_nil
    end
  end

  describe '#message' do
    it 'should calculate the correct winner' do
      round.find_winner
      expect(round.message).to eq 'Andy wins with Rock!'
    end
  end

  describe '#winner' do
    it 'identifies the winning player' do
      expect{round.find_winner}.to change{round.winner}.from(nil).to(player_1)
    end
  end

  describe '#draw?' do
    it 'should identify when it is a draw' do
      allow(player_1).to receive(:selection).and_return(:paper)
      allow(player_2).to receive(:selection).and_return(:paper)
      expect(round.draw?).to eq true
    end
  end
end