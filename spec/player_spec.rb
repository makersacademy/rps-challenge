require 'player'

describe Player do
  subject(:player) { described_class.new('Rocky') }

  describe 'set name' do
    it 'lets a player set their name' do
      expect(player.name).to eq 'Rocky'
    end
  end

  describe 'choose hand' do
    it 'lets a player choose their hand' do
      expect(player.choose(:rock)).to eq :rock
    end
  end

end
