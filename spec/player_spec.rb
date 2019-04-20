require 'player'

describe Player do
  subject(:tara) { Player.new('Tara')}

  describe '#name' do
    it 'returns their name' do
      expect(tara.name).to eq 'Tara'
    end
  end
end
