require 'player'

describe Player do

  let(:player) {described_class.new("Mali")}

  describe '#name' do
    it 'returns the players name' do
      expect(player.name).to eq "Mali"
    end
  end

  describe '#weapon' do
    it 'allows for reading and writing of weapon' do
      player.weapon = 'Paper'
      expect(player.weapon).to eq 'Paper'
    end
  end

  describe '#score' do
    it 'keeps track of the players score' do
      
    end
  end

end
