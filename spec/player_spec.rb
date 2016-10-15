require 'player'

describe Player do
  subject(:naomi) { Player.new('Naomi') }

  describe '#name' do
    it 'returns the name' do
      expect(naomi.name).to eq('Naomi')
    end
  end
end
