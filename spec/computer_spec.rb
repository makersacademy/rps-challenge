require 'computer'

describe Computer do
  subject(:ai) { Player.new('HAL 9000') }

  describe '#name' do
    it 'returns the name' do
      expect(ai.name).to eq 'HAL 9000'
    end
  end
end
