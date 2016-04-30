require 'player'

describe Player do
  subject(:omar) { Player.new('Omar') }

  describe '#name' do
    it 'Returns the name' do
      expect(omar.name).to eq 'Omar'
    end
  end

  describe '#computer?' do
    it 'Returns false if player\'s name is not \'Computer\'' do
      expect(omar.computer?).to be false
    end
  end
  
end
