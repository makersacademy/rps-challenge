require 'player'

describe Player do

  subject(:player) { described_class.new('Bernard') }

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq 'Bernard'
    end
  end

  describe '#choose' do
    it 'selects a hand to play' do
      expect(player.choose(:rock)).to eq :rock
    end
  end


end
