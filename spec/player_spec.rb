require 'player'

describe Player do

  subject(:player1) { described_class.new('player1') }

  describe '#name' do
    it 'returns players name' do
      expect(player1.name).to eq 'player1'
    end
  end

  describe '#move' do
    it 'allows a player to choose a move' do
      expect(player1.move('Paper')).to eq('Paper')
    end
  end

  describe '#rand_move' do
    it 'selects a random move' do
      expect_any_instance_of(Player).to receive(:rand_move).and_return("Rock")
      expect(player1.rand_move).to eq('Rock')
    end
  end
end
