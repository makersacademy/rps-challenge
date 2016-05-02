require 'player'

describe Player do
  subject(:omar) { Player.new('Omar') }

  describe '#name' do
    it 'Returns the name' do
      expect(omar.name).to eq 'Omar'
    end
  end

  describe '#play' do
    it 'Returns the choice of the player' do
      expect(omar.play :rock).to eq :rock
    end
  end

end
