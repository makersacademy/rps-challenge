require 'player'

describe Player do
  subject(:adrien) { Player.new('Adrien') }

  describe '#name' do
    it 'returns the name' do
      expect(adrien.name).to eq 'Adrien'
    end
  end

  describe '#choose' do
    it 'it returns a shape' do
      adrien.choose('Rock')
      expect(adrien.shape).to eq 'Rock'
    end
  end
end
