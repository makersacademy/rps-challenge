require 'player'

describe Player do
  subject(:player1) { described_class.new('Dragon Eyes') }
  subject(:player2) { described_class.new('Eagle Claw') }

  describe 'initialize' do
    it 'returns player1 name' do
      expect(player1.name).to eq 'Dragon Eyes'
    end
    it 'returns player2 name' do
      expect(player2.name).to eq 'Eagle Claw'
    end
  end
end
