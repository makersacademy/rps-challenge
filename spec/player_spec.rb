require 'player'

describe Player do
  subject(:dave) { described_class.new('Dave') }
  let(:move) { double :rock }

  describe 'initialize' do
    it 'has a name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#move' do
    it 'contains the players choice' do
      allow(move).to receive(:to_sym).and_return(:rock)
      dave.move(move)
      expect(dave.player_move).to eq :rock
    end
  end
end
