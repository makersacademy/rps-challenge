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
      dave.move(move)
      expect(dave.player_move).to eq move
    end
  end

end
